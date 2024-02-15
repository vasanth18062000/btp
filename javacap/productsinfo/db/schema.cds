namespace sap.capire.products;

using {managed} from '@sap/cds/common';

entity Products :managed {
    key ID:Integer;
    title    : localized String(111);
    descr    : localized String(1111);
    stock    : Integer;
    price    : Integer;
   
}

