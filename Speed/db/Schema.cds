using{managed,Currency,temporal,Country,User} from '@sap/cds/common';
namespace com.ladera.utcl.speed;

entity Customer: managed{
key id         :Integer @unique; 
customerId     :String(50);
firstName      :String(50);
lastName       :String(50);
contactDetails :Association to many ContactDetails on contactDetails.customer=$self;
dateOfBirth    :Date;
addresses      :Association to  many Address on addresses.customer=$self;
title          :Association to one Title;
carts          :Association to  many Cart on carts.customer=$self;
name           :String(50) = firstName ||' '|| lastName;
orders         :Association to  many Order on orders.customer=$self;
}

entity ContactDetails:  managed{
    key id:Integer @unique;
phoneNumber:String(50);
emailId:String(50);

contactType:String @assert.range enum{
PRIMARY;SECONDARY;};
customer:Association to one Customer;
}

entity Address: managed{
key id         :Integer @unique;
addressLine1   :String(50);
addressLine2   :String(50);
addressLine3   :String(50);
addressLine4   :String(50);
city           :Association to one City;
state          :Association to one State;
pincode        :String(10);
country        :Country;
customer       :Association to one Customer;
addressType    :Association to one AddressType;
}


entity City: managed{
key id         :Integer;
code           :String(50);
name           :localized String(50);
status         :Boolean;
}


entity State: managed{
key id         :Integer;
code           :String(50);
name           :localized String(50);
status         :Boolean;
}

entity AddressType:   managed{
key id         :Integer;
status         :Boolean;
code           :Integer;
value          :String(50);
}


entity Product:  managed{
key id         :Integer @unique;
code           :String(50);
name           :localized String;
productImage   :String(1000);
description    :localized String(50);
price          :Association to  many PriceRow on price.productId=$self;
rating         :Double;
manufactureId  :String(50);
sellerId       :String(50);
// order          : Composition of many Order;
}


entity PriceRow:   managed{
key id          :Integer @unique;
price           :Double;
currency        :Currency;
unit            :String @assert.range enum {KG;METER;GRAM;LENGTH;INCH;LITRE;};
productId       :Association to one Product;
}


entity Cart:   managed{
key id          :Integer;
cartCode        :String(50);
cartEntries     :Association to  many CartEntry;
customer        :Association to Customer;
totalPrice      :Double;
deliveryAddress :Association to Address;
contactDetail   :Association to ContactDetails;
paymentMode     :String @assert.range enum{
                    COD;
                    PO;
                    };
isActive        :Boolean;
}


entity CartEntry:   managed{
key id          :Integer;
entryNumber     :String(50);
product         :Association to Product;
quantity        :Integer;
subTotal        :Decimal(10,2);
totalQuantity   :Decimal(10,2);
}


entity Order:   managed{
key id          :Integer;
orderCode       :String(50);
orderEntries    :Association to  many OrderEntry on orderEntries.order=$self;
customer        :Association to Customer;
totalPrice      :Decimal(10,2);
deliveryAddress :Association to Address;
billingAddress  :Association to Address;
deliveryContact :Association to ContactDetails;
paymentMode     :String @assert.range enum{
COD;PO;};
shippingMethod  :Association to one ShippingMethod;
message         :localized String(200);
// order           : Association to many Product;
}

entity ShippingMethod:   managed{
key id          :Integer;
code            :String(50);
name            :String(50);
notes           :String(200);
}


entity OrderEntry:   managed{
key id          :Integer;
entryNumber     :String(50);
products        :Association to Product;
quantity        :Integer;
subTotal        :Decimal (10,2);
totalQuantity   :Integer;
order           :Association to Order;
}


entity Title:   managed{
key id          :Integer;
code            :String(50);
value           :String(50);
}


entity StockLevel:   managed{
key id          :Integer;
stockLevel      :String @assert.range enum{
                    INSTOCK;
                    OUTOFSTOCK;
                    };
availability    :Integer;
threshold       :Integer;
location        :String(50);
warehouse       : Association to Warehouse;
}


entity Warehouse: managed{

    key id                      :String(50);
    warehouseAddress            :Association to Address;
    contactPerson               :String(50);
    contactDetails              :Association to many ContactDetails;
    stockatWarehouse            :Association to many StockLevel;


}
