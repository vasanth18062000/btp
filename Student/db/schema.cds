// using { sap.common.Locale } from '@sap/cds/common';
namespace com.ladera.student;

entity Student {
    key ID : String;
    name : String;
    regNo : String;
    address : String;
    phoneNumber : String;
    dream : localized String;
}
