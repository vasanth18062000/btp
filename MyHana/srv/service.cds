using {bookshop.db as my} from '../db/schema';



service CatalogService {
  entity Books as projection on my.Books;
  entity Authors  as projection on my.Authors;
  entity Orders  as projection on my.Orders;
}
annotate my.Authors with @odata.draft.enabled ;
annotate my.Books with @odata.draft.enabled;
annotate my.Orders with @odata.draft.enabled;