using { sap.capire.OrderManagement as my } from '../db/schema';

service OrderService @(requires:'authenticated-user') {
  entity Customer as projection on my.Customer;
  entity Order as projection on my.Order;
  entity Address as projection on my.Address;
}
