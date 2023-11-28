using { com.sap.book as bookshop } from '../db/index';

annotate bookshop.Books with {
  author @title : 'Author';
  genre  @title : 'Genre';
  price  @title : 'Price';
  ID     @UI.Hidden;
  descr    @title : 'Description';
  currency @UI.Hidden;
}