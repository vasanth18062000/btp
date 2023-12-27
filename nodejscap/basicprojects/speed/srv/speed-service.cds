using{com.ladera.utcl.speed as speedpack} from '../db/schema';

service SpeedService{
    entity Customer as projection on speedpack.Customer;
    entity Address as projection on speedpack.Address;
    entity Product as projection on speedpack.Product;
    entity Order as projection on speedpack.Order;
    entity StockLevel as projection on speedpack.StockLevel; 
    entity WareHouse as projection on speedpack.Warehouse
}

annotate SpeedService.Customer with @odata.draft.enabled;

extend projection SpeedService.Customer with {
    firstName ||' '|| lastName as name:String 
}