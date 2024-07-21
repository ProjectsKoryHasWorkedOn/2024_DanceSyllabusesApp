#include <iostream>

#include <Poco/Data/MySQL/Connector.h>
#include <Poco/Data/Session.h>
#include <Poco/Data/SessionFactory.h>

#include "customer_dao.hpp"
#include "scope_guard.hpp"

int main()
{
  Poco::Data::MySQL::Connector::registerConnector();
  const std::string connectionString{
    "host=127.0.0.1;user=root;password=letmein;db=cpp_db;compress=true;auto-"
    "reconnect="
    "true"};
  Poco::Data::Session session{Poco::Data::SessionFactory::instance().create(
    Poco::Data::MySQL::Connector::KEY, connectionString)};

  if (!session.isConnected()) {
    std::cerr << "session is not connected!\n";
    return EXIT_FAILURE;
  }

  if (!session.isGood()) {
    std::cerr << "session is bad!\n";
    return EXIT_FAILURE;
  }

  auto scopeGuard{db::makeScopeGuard([&session] {
    session.commit();
    session.close();
  })};

  db::CustomerDAO             customerDAO{session};
  std::optional<db::Customer> optionalCustomer{
    customerDAO.createCustomer("Peter Smith")};

  if (!optionalCustomer.has_value()) {
    std::cerr << "Couldn't create Peter Smith!\n";
    return EXIT_FAILURE;
  }

  db::Customer& customer{*optionalCustomer};
  std::cout << "Successfully created \"" << customer << "\"!\n";

  if (!customerDAO.updateCustomer(customer, "John Smith")) {
    std::cerr << "Couldn't update customer name.\n";
    return EXIT_FAILURE;
  }

  std::cout << "Successfully updated customer to \"" << customer << "\"!\n";

  std::optional<db::Customer> optional{customerDAO.readCustomer(1)};

  if (!optional.has_value()) {
    std::cerr << "Couldn't find customer with ID 1\n";
    return EXIT_FAILURE;
  }

  std::cout << "read \"" << *optional << "\" from the database.\n";

  if (!customerDAO.deleteCustomer(customer)) {
    std::cerr << "Couldn't delete customer.\n";
    return EXIT_FAILURE;
  }

  std::cout << "Managed to delete customer.\n";
  return EXIT_SUCCESS;
}
