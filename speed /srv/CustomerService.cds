using {com.ladera.utcl.speed as project} from '../db/schema';

service Customer  {

    entity ContactDetails as projection on project.ContactDetails;
    entity Address as projection on project.Address;
    entity City as projection on project.City;
    entity State as projection on project.State;
    entity AddressType as projection on project.AddressType;
    entity PriceRow as projection on project.PriceRow;
    entity CartEntry as projection on project.CartEntry;
    entity ShippingMethod as projection on project.ShippingMethod;
    entity OrderEntry as projection on project.OrderEntry;
    entity Title as projection on project.Title;
    entity StockLevel as projection on project.StockLevel;
    entity warehouse as projection on project.Warehouse;
      entity Customer  as projection on project.Customer;


}
annotate Customer.Customer with @odata.draft.enabled;
annotate Customer.CartEntry with @odata.draft.enabled;



