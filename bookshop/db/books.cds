namespace toadslop.bookshop;
using { Currency } from '@sap/cds/common';
using {toadslop.bookshop as bookshop} from './index';
entity Books {
  key id : Integer;
  title  : String(100);
  descr  : String(1000);
  author : String(100);
  genre  : String(100);
  price : Decimal(9,2);
  currency : Currency;
  rating   : Decimal(2, 1)@assert.range : [ 0.0, 5.0 ];
  reviews  : Association to many bookshop.Reviews
                   on reviews.book = $self;
}

