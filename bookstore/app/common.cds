using { sap.capire.bookstore as bookstore } from '../db/schema';
annotate bookstore.Books with {
  title @title : 'Title';
  stock  @title : 'Stock';
  price  @title : 'Price';
  rating  @title : 'Rating';
  currency @UI.Hidden;
}