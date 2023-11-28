namespace com.sap.bookshop;
using {com.sap.bookshop as book} from './index';
using {cuid, managed} from '@sap/cds/common';
entity Reviews : cuid, managed {
    book   : Association to book.Books;
    rating : book.Rating @assert.range;
    title  : String(100)     @mandatory;
    text   : String(1000)    @mandatory;
}



