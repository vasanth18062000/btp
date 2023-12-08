namespace toadslop.bookshop;

using { Currency } from '@sap/cds/common';
using {toadslop.review as bookshop} from './review';
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

type Name: String(100);

type Rating : Integer enum {
    Great    = 5;
    Good     = 4;
    Average  = 3;
    Poor     = 2;
    Bad      = 1;
    Terrible = 0;
}

type Text: String(100);