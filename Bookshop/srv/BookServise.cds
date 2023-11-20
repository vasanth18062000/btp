using {sap.capire.books as book } from '../db/schema';

service MyService {

    entity Books as projection on book.Books;

}