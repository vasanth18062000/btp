using{com.ladera.utcl.speed as my}from '../db/schema';
service SpeedService {

    entity Customer as projection on my.Customer;
    entity Address as projection on my.Address;
    entity Product as projection on my.Product;
    entity Order as projection on my.Order;
    entity StockLevel as projection on my.StockLevel;
    entity WareHouse as projection on my.Warehouse;
    entity Cart as projection on my.Cart;
    entity CartEntry as projection on my.CartEntry;

 }

extend projection SpeedService.Customer with{
    firstName || ' ' || lastName as name:String
}

annotate my.Product with @odata.draft.enabled;
annotate my.Address with @odata.draft.enabled;
annotate my.OrderEntry with @odata.draft.enabled;
annotate my.ContactDetails with @odata.draft.enabled;

annotate my.Customer with @odata.draft.enabled;

annotate my.ShippingMethod with @odata.draft.enabled;

annotate my.StockLevel with @odata.draft.enabled;
annotate my.Warehouse with @odata.draft.enabled;
annotate my.Title with @odata.draft.enabled;

annotate my.PriceRow with @odata.draft.enabled;




