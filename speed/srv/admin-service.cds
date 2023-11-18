Using{com.ladera.speed as speed } from '../db/schema';

Service Adminservice  {
 entity Customer as projection on speed.Customer;
entity Address as projection on speed.Address;
 entity city as projection on speed.City;
entity AddressType as projection on speed.AddressType;
entity ContactDetails as projection on speed.ContactDetails;
entity Cart as projection on speed.Cart;
 annotate Adminservice.Cart with @odata.draft.enabled;
 entity CartEntry as projection on speed.CartEntry;
  entity Product as projection on speed.Product;
}