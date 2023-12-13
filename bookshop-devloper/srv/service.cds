using {bookshop.db as my} from '../db/schema';

service CatalogService {
  entity Books as projection on my.Books;
  entity Authors as projection on my.Authors;
  entity Orders  as projection on my.Orders;
}

annotate CatalogService.Books with @odata.draft.enabled;
