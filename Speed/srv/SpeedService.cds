using{com.ladera.utcl.speed as my}from '../db/SpeedSchema';
service SpeedService {

    entity Customer as projection on my.SpeedSchema.Customer;
    entity Address as projection on my.SpeedSchema.Address;
    entity Product as projection on my.SpeedSchema.Product;
    entity Order as projection on my.SpeedSchema.Order;
    entity StockLevel as projection on my.SpeedSchema.StockLevel;
    entity WareHouse as projection on my.SpeedSchema.Warehouse;

}annotate SpeedService.Product with @odata.draft.enabled ;

extend projection SpeedService.Customer with{
    firstName || ' ' || lastName as name:String
}