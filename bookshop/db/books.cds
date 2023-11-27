using {cuid,Currency,managed} from '@sap/cds/common';
using {com.sap.bookshop as bookshop} from './index';
namespace com.sap.bookshop;

entity Books : cuid, managed{
  title  : bookshop.Name;
  descr  : bookshop.Text;
  author : bookshop.Name;
  genre  : bookshop.Name;
  price : Decimal(9,2);
  currency : Currency;
  rating   : Decimal(2, 1);
  reviews  : Association to many bookshop.Reviews on reviews.book = $self;
}

