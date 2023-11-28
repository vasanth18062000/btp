using { toadslop.bookshop as bookshop } from '../db/index';

annotate bookshop.Books with {
  author @title : 'Author';
  genre  @title : 'Genre';
  price  @title : 'Price';
  id     @UI.Hidden;
  descr    @title : 'Description';
  currency @UI.Hidden;
    rating @title : 'Rating'
}