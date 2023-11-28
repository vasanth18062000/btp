namespace com.sap.book;

using {com.sap.book as book} from './index';
using {cuid,managed} from '@sap/cds/common';

entity Reviews : cuid, managed {
    book   : Association to book.Books;
    rating : book.Rating @assert.range;
    title  : book.Name  @mandatory;
    text   : book.Text  @mandatory;
}