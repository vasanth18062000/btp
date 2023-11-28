using {com.sap.bookshop as books} from '../db/books';
@path : 'browse'
service CatalogService {
  entity Books as projection on books.Books
  actions{
    action addReview(rating :books.Rating,title:String(100),text:String(1000)) returns Reviews;
  };
  entity Reviews as projection on books.Reviews;
}



