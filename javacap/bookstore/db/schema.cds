namespace sap.capire.bookstore;

using {  cuid}      from '@sap/cds/common';
using { sap.capire.products.Products} from '@sap/capire-products';

entity Books as projection on Products; extend Products with {
    // Note: we map Books to Products to allow reusing AdminService as is
    author : Association to Authors;
}

entity Authors : cuid {
    firstname : String(111);
    lastname  : String(111);
    books     : Association to many Books on books.author = $self;
}