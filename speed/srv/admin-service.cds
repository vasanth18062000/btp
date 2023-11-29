Using{com.ladera.speed as speed } from '../db/schema';

Service SpeedService  {
 entity Customer as projection on speed.Customer;
entity Address as projection on speed.Address;
 entity city as projection on speed.City;
entity AddressType as projection on speed.AddressType;
entity ContactDetails as projection on speed.ContactDetails;
entity Cart as projection on speed.Cart;
 annotate SpeedService.Cart with @odata.draft.enabled;
 entity CartEntry as projection on speed.CartEntry;
  entity Product as projection on speed.Product;
  entity SampleProductz as projection on speed.SampleProducts;
}