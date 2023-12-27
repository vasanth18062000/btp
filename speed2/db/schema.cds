using { managed,Currency,Country,temporal}from '@sap/cds/common';

namespace com.ladera.utcl.speed;
entity Product{
key id         :Integer;
code           :String(50);
name           :localized String;
productImage   :String;
description    :localized String;
price          :String(30);
rating         :Double;
}
entity Cart {
    key id:Integer;
    cartCode        :String(50);
    totalPrice      :Double;
    paymentMode     :String @assert.range enum{
                    COD;
                    PO;
                    };
    isActive        :Boolean;
    customer        :Association to Customer;
      
}
entity Customer {
    key id         :Integer;
    userId         :String(50);
    firstName      :String(50);
    lastName       :String(50);
    dateOfBirth    :Date;
    addresses      :Association to many  Address on addresses.customer=$self;
    carts          :Association to Cart on carts.customer=$self;
    
}
entity Address {
    key id         :Integer;
    addressLine1   :String(50);
    addressLine2   :String(50);
    addressLine3   :String(50);
    addressLine4   :String(50);
    city           :String(40);
    state          :String(40);
    pincode        :String(10);
    customer       :Association to one Customer;
}