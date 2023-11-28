using {com.sap.book as book} from '../db/books';


service CatalogService {
  entity Books as projection on book.Books
   actions {
    action addReview(rating: book.Rating ,title: book.Name, text: book.Text) returns Reviews;
   };
  entity Reviews as projection on book.Reviews;
}