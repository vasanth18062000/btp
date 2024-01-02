using {cuid} from '@sap/cds/common';
namespace com.ladera.code;

entity student {
    key id : String;
    name : String;
    regNo : String;
    age : String;
    dob : Date;
    phoneNumber : Association to many contact on phoneNumber.phNo = $self;
    address : Association to address;
}

entity address {
    key id : String;
    addressLine1 : String;
    addressLine2 : String;
    addressLine3 : String;
    pincode : String;
}

entity contact{
    key id : String;
    phNo : Association to student;
    email : String;
}