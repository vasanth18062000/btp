using {toadslop.bookshop as bookshop} from '../db/books';

@path : 'browse'
service CatalogService {
  entity Books as projection on bookshop.Books;
}
// annotate CatalogService.Books with @odata.draft.enabled ;
