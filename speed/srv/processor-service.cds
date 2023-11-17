using { com.ladera.utcl.speed as my} from '../db/schema';
service ProcessorService {

    entity Customer as projection on my.Customer;
    entity Address as projection on my.Address;
    entity Product as projection on my.Product;
    entity Warehouse as projection on my.Warehouse;
    entity StockLevel as projection on my.StockLevel;
    entity Order as projection on my.Order;

}
annotate ProcessorService.Customer with @odata.draft.enabled;
extend projection ProcessorService.Customer with {
    firstName || ' ' || lastName as name:String 
}