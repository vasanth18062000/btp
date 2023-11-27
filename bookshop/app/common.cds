using { com.sap.bookshop as bookshop } from '../db/index';

annotate bookshop.Books with {
  author @title : 'Author';
  price  @title : 'Price';
  rating @title : 'Rating';
}