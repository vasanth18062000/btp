namespace com.sap.book;

using { Currency,cuid } from '@sap/cds/common';
using {com.sap.book as book} from './index.cds';

entity Books {
  key id :String;
  title  : Name;
  descr  : Text;
  author : Name;
  genre  : Name;
  price : Decimal(9,2);
  currency : Currency;
  rating   : Decimal(2, 1)@assert.range : [ 0.0, 5.0 ];
  reviews  : Association to many book.Reviews on reviews.book = $self;
}

type Name : String(100);

type Text : String(1000);

type Rating : Integer enum {
    Great    = 5;
    Good     = 4;
    Average  = 3;
    Poor     = 2;
    Bad      = 1;
    Terrible = 0;
}
