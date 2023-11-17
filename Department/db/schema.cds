using { cuid, Country, Currency } from '@sap/cds/common';
namespace sap.capire.Department;

entity customer : cuid {
    name : String;
    mobileNo : String;
    address : String;
    aadharNumber : String;
}

