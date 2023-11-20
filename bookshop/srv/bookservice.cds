using{bookshop.db as my}from '../db/schema';
service bookshopService {

    entity Books as projection on my.Books;

}