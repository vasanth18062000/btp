using {cuid,managed,sap.common.CodeList} from '@sap/cds/common';
namespace sap.capire.OrderManagement;

entity Customer : cuid ,managed{
    firstName: String not null;
    LastName:String not null;
    email:String not null;
    contact: Integer not null;
    address: Composition of many Address on address.customer = $self;

}

entity Order : cuid,managed {
    paymentMode: PaymentMode;
    totalPrice: Decimal(4, 2);

}

entity Address : cuid,managed {
    addressLine1: String(255) not null;
    addressLine2: String(255);
    state: String not null;
    city:String not null;
    pincode:String not null;
    customer: Association to Customer

}
@assert.range
type PaymentMode : CodeList {
   code: String enum {
      cash_on_delivery = 'COD';
      online_payment = 'ONLINE'; 
  };
}
//onetomany
//https://port4004-workspaces-ws-ppb56.us10.trial.applicationstudio.cloud.sap/odata/v4/order/Customer?$expand=address
//to check only id
//https://port4004-workspaces-ws-ppb56.us10.trial.applicationstudio.cloud.sap/odata/v4/order/Customer?$select=ID&$expand=address($select=ID)

///viceversa
//https://port4004-workspaces-ws-ppb56.us10.trial.applicationstudio.cloud.sap/odata/v4/order/Address?$expand=customer
//https://port4004-workspaces-ws-ppb56.us10.trial.applicationstudio.cloud.sap/odata/v4/order/Address?($select=ID)?$expand=customer($select=ID)