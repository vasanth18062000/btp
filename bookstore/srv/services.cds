 using { sap.bookstore as db } from '../db/schema';
using { AdminService } from '@sap/capire-products';

service OrdersService {
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}

extend service AdminService with {
    entity Authors as projection on db.Authors;
}

service BooksService {
    @readonly entity Books as projection   on db.Books { *, category as genre } excluding { category, createdBy, createdAt, modifiedBy, modifiedAt }\
    actions{
        action addReview(rating: Integer, title: String, text: String) returns Reviews;
    };
    entity Reviews as projection on db.Reviews;
    @readonly entity Authors as projection on db.Authors;
    entity Orders as projection on db.Orders;
}