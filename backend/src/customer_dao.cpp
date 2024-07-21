#include <atomic>

#include "customer_dao.hpp"

namespace db {
using namespace Poco::Data::Keywords;

CustomerDAO::CustomerDAO(Poco::Data::Session& session) : m_session{session}
{
}

std::optional<Customer> CustomerDAO::createCustomer(std::string name)
{
  try {
    const std::uint64_t   id{nextId()};
    Customer              customer{id, std::move(name)};
    Poco::Data::Statement insertStatement{m_session};
    insertStatement << "INSERT INTO customer VALUES(?, ?)", use(customer.m_id),
      use(customer.m_name);
    const std::size_t rowsAffected{insertStatement.execute()};

    if (rowsAffected == 0) {
      return std::nullopt;
    }

    if (!insertStatement.done()) {
      return std::nullopt;
    }

    return customer;
  }
  catch ([[maybe_unused]] const Poco::Exception& exception) {
    return std::nullopt;
  }
}

std::optional<Customer> CustomerDAO::readCustomer(std::uint64_t id)
{
  try {
    Poco::Data::Statement selectStatement{m_session};
    std::string           name{};
    selectStatement << "SELECT name FROM customer WHERE id=?", into(name),
      use(id);
    const std::size_t rowsAffected{selectStatement.execute()};

    if (rowsAffected == 0) {
      return std::nullopt;
    }

    if (!selectStatement.done()) {
      return std::nullopt;
    }

    return Customer{id, std::move(name)};
  }
  catch ([[maybe_unused]] const Poco::Exception& exception) {
    return std::nullopt;
  }
}

bool CustomerDAO::updateCustomer(Customer& customer, std::string newName)
{
  try {
    Poco::Data::Statement updateStatement{m_session};
    updateStatement << "UPDATE customer SET name=? WHERE id=?", use(newName),
      use(customer.m_id);
    const std::size_t rowsAffected{updateStatement.execute()};

    if (rowsAffected == 0) {
      return false;
    }

    if (!updateStatement.done()) {
      return false;
    }

    customer.m_name = std::move(newName);
    return true;
  }
  catch ([[maybe_unused]] const Poco::Exception& exception) {
    return false;
  }
}

bool CustomerDAO::deleteCustomer(Customer& customer)
{
  try {
    Poco::Data::Statement deleteStatement{m_session};
    deleteStatement << "DELETE FROM customer where id=?", use(customer.m_id);
    const std::size_t rowsAffected{deleteStatement.execute()};

    if (rowsAffected == 0) {
      return false;
    }

    if (!deleteStatement.done()) {
      return false;
    }

    customer.m_id = 0;
    customer.m_name.clear();
    return true;
  }
  catch ([[maybe_unused]] const Poco::Exception& exception) {
    return false;
  }
}

std::uint64_t CustomerDAO::nextId()
{
  static std::atomic<std::uint64_t> id{1};
  return id++;
}
} // namespace db
