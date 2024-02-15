using { sap.capire.bookstore as db } from '../db/schema';

// Define Books Service

service BooksService {
    @readonly entity Books as projection   on db.Books ;
    @readonly entity Authors as projection on db.Authors;
}



// Reuse Admin Service
using { AdminService } from '@sap/capire-products';
extend service AdminService with {
    entity Authors as projection on db.Authors;
}

annotate AdminService @(requires: 'Administrators');