#include <ostream>
#include <utility>

#include "customer.hpp"

namespace db {
std::ostream& operator<<(std::ostream& os, const Customer& customer)
{
  return os << "Customer{"
            << "id: " << customer.m_id << ", name: " << customer.m_name << "}";
}

Customer::Customer(std::uint64_t id, std::string name)
  : m_id{id}, m_name{std::move(name)}
{
}
} // namespace db
