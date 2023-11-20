using {managed,cuid} from '@sap/cds/common';
namespace sap.capire.books;
entity Books : cuid,managed{
    title :String;
    discrib:String;
    page:Integer;
    price:Integer;
}
