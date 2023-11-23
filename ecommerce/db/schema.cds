using {cuid,managed,sap.common.CodeList,Currency,temporal} from '@sap/cds/common';
namespace sap.capire.ecommerce;


entity Customer: managed {
  key ID: Integer;
  userId: String(50);
  firstName: String(50);
  lastName: String(50);
  contactDetails: Association to many ContactDetails on contactDetails.customer = $self;
  dateOfBirth: Date;
  addresses: Association to many Address on addresses.customer = $self;
  title: Association to one Title;
  carts: Composition of many Cart on carts.customer = $self;
  name: String(50) = firstName || lastName stored; 
  orders: Composition of many Order on orders.customer = $self;
}


entity ContactDetails: managed {
  phoneNumber: String(50);
  emailId: String(50);
  key id: Integer;
  contactType: String(15) @assert.range.enum: ['PRIMARY', 'SECONDARY'];
  customer: Association to one Customer;
}

entity Address:Customer{
key id:Integer;
addressLine1:String(50);
addressLine2:String(50);
addressLine3:String(50);
addressLine4:String(50);
city:Association to one City;
state:Association to one State;
pincode:String(10);
customer:Association to one Customer;
addressType:Association to one AddressType;
}

entity City: managed{
key id:Integer;
code:String(50);
name:localized String(50);
status:Boolean;
}
entity State: managed{
key id:Integer;
code:String(50);
name:localized String(50);
status:Boolean;
}

entity AddressType: managed{
key id:Integer;
status:Boolean;
code:Integer;
value:String(50);
}
entity Product:  temporal, managed{
key id:Integer;
code:String(50);
name:localized String(50);
productImage:String(50);
description:localized String(50);
price:Composition of many PriceRow on price.productId=$self;
rating:Double;
manufactureId:String(50);
sellerId:String(50);
}
entity PriceRow:managed{
key id:Integer;
price:Double;
currency:Currency;
unit:String @assert.range enum {KG;METER;GRAM;LENGTH;INCH;LITRE;};
productId:Association to one Product;
}

entity Cart:managed {
  key id: Integer64;
  cartCode: String(50);
  cartEntries: Composition of many CartEntry;
  customer: Association to Customer;
  totalPrice: Double;
  deliveryAddress: Association to Address;
  contactDetail: Association to ContactDetails;
  paymentMode: String @assert.range.enum: ['COD', 'PO'];
  isActive: Boolean;
}

entity CartEntry:managed{
key id:Integer;
entryNumber:String(50);
product:Association to Product;
quantity:Integer;
subTotal:Decimal(10,2);
totalQuantity:Decimal(10,2);
}

entity Order:managed {
  key id: Integer;
  orderCode: String(50);
  orderEntries: Composition of many OrderEntry on orderEntries.order = $self;
  customer: Association to Customer;
  totalPrice: Decimal(10, 2);
  deliveryAddress: Association to Address;
  billingAddress: Association to Address;
  deliveryContact: Association to ContactDetails;
  paymentMode: String @assert.range.enum: ['COD', 'PO'];
  shippingMethod: Association to one ShippingMethod;
  message: localized String(200);
}

entity ShippingMethod:   managed{
key id:Integer;
code:String(50);
name:String(50);
notes:String(200);
}

entity OrderEntry: managed{
key id:Integer;
entryNumber:String(50);
products:Association to Product;
quantity:Integer;
subTotal:Decimal (10,2);
totalQuantity:Integer;
order:Association to Order;
}
entity Title: managed{
key id:Integer;
code:String(50);
value:String(50);
}
entity StockLevel:   managed{
key id:Integer;
stockLevel:String @assert.range enum{INSTOCK;OUTOFSTOCK};
availability:Integer;
threshold:Integer;
location:String(50);
}
entity Warehouse:   managed{
id:String(50);
warehouseAddress:Association to Address;
contactPerson:String(50);
contactDetails:Association to many ContactDetails;
stockatWarehouse:Association to many StockLevel;


}
entity StockLevelToWareHouse:   managed{
}
entity CustomerToAddress:managed{
key customerId : Integer;
password : String(50);
firstName : String(50);
lastName : String(50);
contactDetails : Association to many ContactDetails on contactDetails.customer = $self;
dateOfBirth : Date;
addresses : Association to many Address on addresses.customer = $self;
title : Association to one Title;
orders : Composition of many Order on orders.customer = $self;
carts : Composition of many Cart on carts.customer = $self;
}