using{com.fooddelivery.db as my}from '../db/Schema';

service ProcessorService {

    entity Customer as projection on my.Customer;
    entity Address as projection on my.Address;
    entity Hotel as projection on my.Hotel;
    entity Order as projection on my.Order;
    entity DeliveryExecutive as projection on my.DeliveryExecutive;

}
  