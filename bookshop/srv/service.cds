using {bookshop as bookshop} from '../db/schema';
service BookService {

    entity Books as projection on bookshop.Books;
    entity Authors as projection on bookshop.Authors;

}
