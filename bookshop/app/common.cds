using { toadslop.bookshop as bookshop } from '../db/books';
annotate bookshop.Books with {
  author @title : 'Author';
  genre  @title : 'Genre';
  price @title : 'Price';
  id       @UI.Hidden;
  currency @UI.Hidden;
  title @title : 'Title';
  descr @title : 'Description';
  rating @title : 'Rating'
}