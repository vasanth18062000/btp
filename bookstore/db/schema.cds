namespace sap.bookstore;

using { Currency, cuid, managed }      from '@sap/cds/common';
using { sap.capire.products.Products } from '@sap/capire-products';

entity Books as projection on Products; 

extend Products with {
     author : Association to Authors;
     reviews: Association to many Reviews on reviews.book=$self;
}

entity Reviews : cuid,managed{
    rating : Integer;
    title: String(100);
    text : String(1000);
    book : Association to Products;
} 

entity Authors : cuid {
    firstname : String(111);
    lastname  : String(111);
    books     : Association to many Books on books.author = $self;
}

@Capabilities.Updatable: false
entity Orders : cuid, managed {
    items    : Composition of many OrderItems on items.parent = $self;
    total    : Decimal(9,2) @readonly;
    currency : Currency;
}

@Capabilities.Updatable: false
entity OrderItems : cuid {
    parent    : Association to Orders not null;
    book_ID   : UUID;
    amount    : Integer;
    netAmount : Decimal(9,2) @readonly;
}
