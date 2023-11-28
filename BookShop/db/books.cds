using { Currency } from '@sap/cds/common';
using {com.sap.bookshop as bookshop} from './index';

namespace com.sap.bookshop;


     

entity Books {
  key id : String;
  title  : String(100);
  descr  : String(1000);
  author : String(100);
  genre  : String(100);
  price : Decimal(9,2);
  currency : Currency;
  rating   : Decimal(2, 1)@assert.range : [ 0.0, 5.0 ];
  reviews  : Association to many bookshop.Reviews on reviews.book = $self;
}

type Rating : Integer enum {
    Great    = 5;
    Good     = 4;
    Average  = 3;
    Poor     = 2;
    Bad      = 1;
    Terrible = 0;
}