using { toadslop.bookshop as bookshop } from '../db/index';

annotate bookshop.Books with {
  author @title : 'Author';
  genre  @title : 'Genre';
  id    @title : 'ID';
  price  @title : 'Price';
  rating  @title : 'Rating';
  descr @UI.Hidden;
  currency @UI.Hidden;
}
