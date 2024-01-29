using { cuid } from '@sap/cds/common';

namespace hanaexample.db;

entity Customer {

    key customerId: String;
    customerFirstName: String;
    customerLastName: String;
    address : Association to many Addresss on address.customer=$self;

}

entity Addresss {

    key adressId: String;
    addressLine1:String;
    addressLine2 : String;
    addressLine3: String;
    customer: Association to Customer ;

}



