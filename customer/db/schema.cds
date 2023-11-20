using {cuid,managed} from '@sap/cds/common';
namespace sap.capire.customer;

entity customer : cuid,managed{
    name : String;
    email : String;
    phone : String;

}

