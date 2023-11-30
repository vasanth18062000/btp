using {sap.capire.bookstore as db} from '../db/schema';
using {AdminService} from 'Ladera-cds';

// Define Books Service
service BooksService {
    @readonly entity Books as projection on db.Books excluding { category, createdBy, createdAt, modifiedBy, modifiedAt };
    @readonly entity Authors as projection on db.Authors;
}

// Define Orders Service
service OrdersService {
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}

// extending the existing AdminService service and add additional elements to the service.
extend service AdminService with {
    entity Authors as projection on db.Authors;
}