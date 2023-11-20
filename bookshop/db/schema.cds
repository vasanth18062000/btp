using{cuid,managed} from '@sap/cds/common';
namespace bookshop.db;
entity Books :managed {
    key id : Integer64;
    name : String @mandatory;
    description : String(1000);
    price : Double;
    stock : Integer;
}

