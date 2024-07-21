#pragma once
#include <cstdint>

#include <iosfwd>
#include <string>

namespace db {
class CustomerDAO;

class Customer {
public:
  friend class CustomerDAO;

  friend std::ostream& operator<<(std::ostream& os, const Customer& customer);

private:
  Customer(std::uint64_t id, std::string name);

  std::uint64_t m_id;
  std::string   m_name;
};
} // namespace db
