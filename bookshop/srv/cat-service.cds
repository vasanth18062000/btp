using {com.sap.book as book} from '../db/books';


service CatalogService {
  entity Books as projection on book.Books
  
   actions {
    action addReview(rating:book.Rating,title:String(100),text:String(1000)) returns Reviews;
   };
   @(restrict: [
        { grant: '*', to: 'Administrators' },
        { grant: '*', where: 'createdBy = $user' }
    ])
  entity Reviews as projection on book.Reviews;
}

//annotate CatalogService @(requires: 'Administrators');