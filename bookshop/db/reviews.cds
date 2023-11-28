using {cuid, managed} from '@sap/cds/common';
using {com.sap.bookshop as bookshop} from './index';

namespace com.sap.bookshop;

entity Reviews : cuid, managed {
    rating : bookshop.Rating @assert.range; // validate the value between the range.
    title  : bookshop.Name @mandatory;
    text   : bookshop.Text @mandatory;
    book   : Association to bookshop.Books;
}

