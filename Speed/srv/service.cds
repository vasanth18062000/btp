using{com.ladera.utcl.speed as my}from '../db/schema';
service SpeedService {

    entity Customer as projection on my.Customer;
    entity Address as projection on my.Address;
    entity Product as projection on my.Product;
    entity Order as projection on my.Order;
    entity StockLevel as projection on my.StockLevel;
    entity WareHouse as projection on my.Warehouse;

}annotate SpeedService.Customer with @odata.draft.enabled ;

extend projection SpeedService.Customer with{
    firstName || ' ' || lastName as name:String
}