namespace sap.capire.bookstore;
using { Currency, cuid, managed }  from '@sap/cds/common';
using { sap.capire.products.Products } from '@sap/capire-products';

entity Books as projection on Products; 
extend Products with {
    author : Association to Authors;
    rating   : Decimal(2, 1)@assert.range : [ 0.0, 5.0 ];
    reviews  : Association to many Reviews on reviews.book = $self;
}
entity Reviews : cuid, managed {
    book   : Association to Products;
    rating :Rating @assert.range;
    title  : String(100)     @mandatory;
    text   : String(1000)    @mandatory;
}
type Rating : Integer enum {
    Great    = 5;
    Good     = 4;
    Average  = 3;
    Poor     = 2;
    Bad      = 1;
    Terrible = 0;
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
