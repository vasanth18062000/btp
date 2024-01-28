using {com.ladera.ui as book } from '../db/schema';

service MyService {

    entity Bookshop as projection on book.Bookshop;

}