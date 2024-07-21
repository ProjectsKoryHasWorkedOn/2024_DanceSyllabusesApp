#pragma once
#include <optional>

#include <Poco/Data/Session.h>

#include "customer.hpp"

namespace db {
class CustomerDAO {
public:
  explicit CustomerDAO(Poco::Data::Session& session);

  std::optional<Customer> createCustomer(std::string name);

  std::optional<Customer> readCustomer(std::uint64_t id);

  bool updateCustomer(Customer& customer, std::string newName);

  bool deleteCustomer(Customer& customer);

private:
  static std::uint64_t nextId();

  Poco::Data::Session& m_session;
};
} // namespace db
