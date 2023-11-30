namespace sap.capire.bookstore;

using {Currency, cuid, managed} from '@sap/cds/common';
using {com.sap.ladera.Products} from 'Ladera-cds';

// Note: we map Books to Product to allow reusing AdminService as is
entity Books as projection on Products; extend Products with {    
    author : Association to Authors;
}

entity Authors : cuid {
    firstname : String(111);
    lastname  : String(111);
    books     : Association to many Books on books.author = $self;
}

@Capabilities.Updatable: false  // @Capabilities.Updatable: false means they cannot be updated, only created and deleted. 
entity Orders : cuid, managed {
    items    : Composition of many OrderItems on items.parent = $self;
    total    : Decimal(9,2) @readonly;  // @readonly means value of these elements cannot be set by a client. The value is calculated by custom code
    currency : Currency;
}

@Capabilities.Updatable: false
entity OrderItems : cuid {
    parent    : Association to Orders not null;
    book_ID   : UUID;
    amount    : Integer;
    netAmount : Decimal(9,2) @readonly;
}