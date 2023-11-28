using { sap.capire.bookstore as db } from '../db/schema';

// Define Books Service
service BooksService {
    @readonly entity Books as projection   on db.Books { *, category as genre } excluding { category, createdBy, createdAt, modifiedBy, modifiedAt };
    @readonly entity Authors as projection on db.Authors;
    actions{
        action addReview(rating:Integer,title:String,text:String)returns Reviews;
    };
    
    entity Reviews as projection on db.Reviews;
    
}

// Define Orders Service
service OrdersService {
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}

// Reuse Admin Service
using { AdminService } from '@sap/capire-products';
extend service AdminService with {
    entity Authors as projection on db.Authors;
}
