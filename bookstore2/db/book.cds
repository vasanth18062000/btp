namespace toadslop.bookshop;

using { Currency } from '@sap/cds/common';
using {toadslop.bookshop as bookshop} from './index';
entity Books {
  key id : String;
  title  : bookshop.Name;
  descr  : bookshop.Text;
  author : bookshop.Name;
  genre  : bookshop.Name;
  price : Decimal(9,2);
  currency : Currency;
  rating   : Decimal(2, 1)@assert.range : [ 0.0, 5.0 ];
  reviews  : Association to many bookshop.Reviews on reviews.book = $self;
}   