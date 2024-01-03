using{com.ladera.utcl.speed as my}from '../db/schema';
service SpeedService {

    entity Customer as projection on my.Schema.Customer;
    entity Address as projection on my.Schema.Address;
    entity Product as projection on my.Schema.Product;
    entity Order as projection on my.Schema.Order;
    entity StockLevel as projection on my.Schema.StockLevel;
    entity WareHouse as projection on my.Schema.Warehouse;
    entity Cart as projection on my.Schema.Cart;
    entity CartEntry  as projection on my.Schema.CartEntry;

        action addReview() returns Reviews;

    entity Reviews as projection on my.Schema.Reviews;

    
}

extend projection SpeedService.Customer with{
    firstName || ' ' || lastName as name:String
}


annotate my.Schema.Product with @odata.draft.enabled;
annotate my.Schema.Address with @odata.draft.enabled;
annotate my.Schema.OrderEntry with @odata.draft.enabled;
annotate my.Schema.ContactDetails with @odata.draft.enabled;

annotate my.Schema.Customer with @odata.draft.enabled;

annotate my.Schema.ShippingMethod with @odata.draft.enabled;

annotate my.Schema.StockLevel with @odata.draft.enabled;
annotate my.Schema.Warehouse with @odata.draft.enabled;
annotate my.Schema.Title with @odata.draft.enabled;




