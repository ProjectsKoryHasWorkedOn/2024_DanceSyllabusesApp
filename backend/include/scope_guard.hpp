#pragma once
#include <functional>
#include <utility>

namespace db {
template<typename UnaryInvocable>
class ScopeGuard {
public:
  explicit ScopeGuard(UnaryInvocable invocable) noexcept
    : m_invocable{std::move(invocable)}, m_shallInvoke{true}
  {
  }

  ScopeGuard(ScopeGuard&& other) noexcept
    : m_invocable{std::move(other.m_invocable)}
    , m_shallInvoke{std::exchange(other.m_shallInvoke, false)}
  {
  }

  ScopeGuard(const ScopeGuard&) = delete;
  ScopeGuard& operator=(const ScopeGuard&) = delete;
  ScopeGuard& operator=(ScopeGuard&&) = delete;

  ~ScopeGuard()
  {
    if (m_shallInvoke) {
      std::invoke(m_invocable);
    }
  }

private:
  UnaryInvocable m_invocable;
  bool           m_shallInvoke;
};

template<typename UnaryInvocable>
ScopeGuard<std::remove_cv_t<std::remove_reference_t<UnaryInvocable>>>
makeScopeGuard(UnaryInvocable&& invocable) noexcept
{
  return ScopeGuard<std::remove_cv_t<std::remove_reference_t<UnaryInvocable>>>(
    std::forward<UnaryInvocable>(invocable));
}
} // namespace db
