using {toadslop.bookshop as bookshop} from '../db/index';
using from '../srv/cat-service';
using from '@sap/cds/common';

annotate bookshop.Books with {
  author   @title: 'Author';
  genre    @title: 'Genre';
  price    @title: 'Price';
  rating   @title: 'Rating';
  id       @UI.Hidden;
  currency @UI.Hidden;
}
