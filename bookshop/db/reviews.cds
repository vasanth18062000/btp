namespace toadslop.bookshop;

using {cuid,managed} from '@sap/cds/common';
using {toadslop.bookshop as bookshop} from './index';

entity Reviews : cuid, managed {  
        
        rating : bookshop.Rating @assert.range;
        title  : bookshop.Name @mandatory;
        text   : bookshop.Text @mandatory;
        book   : Association to bookshop.Books;
}