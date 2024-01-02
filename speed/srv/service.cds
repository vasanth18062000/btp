
using{com.ladera.utcl.speed as my} from '../db/schema';
service OmsService {

    entity Customer as projection on my.Customer;
    entity Address as projection on my.Address;
    entity Product as projection on my.Product;
    entity Warehouse as projection on my.Warehouse;
    entity StockLevel as projection on my.StockLevel;
    entity Order as projection on my.Order;
}annotate OmsService.Customer with @odata.draft.enabled; 
