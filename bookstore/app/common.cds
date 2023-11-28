using { sap.bookstore as bookstore } from '../db/schema';

annotate bookstore.Books with {
  title @title : 'Name';
  price @title : 'Price';
  ID    @UI.Hidden;
  rating @title : 'Rating';
}