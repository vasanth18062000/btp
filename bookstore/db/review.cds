namespace toadslop.review;

using {cuid,managed} from '@sap/cds/common';
using {toadslop.bookshop as bookshop} from './book';

entity Reviews : cuid, managed {  
        
        rating : bookshop.Rating @assert.range;
        title  : bookshop.Name @mandatory;
        text   : bookshop.Text @mandatory;
        book   : Association to bookshop.Books;
}

type Text: String(100);

type Rating : Integer enum {
    Great    = 5;
    Good     = 4;
    Average  = 3;
    Poor     = 2;
    Bad      = 1;
    Terrible = 0;
}
type Name: String(100);