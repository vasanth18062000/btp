namespace toadslop.bookshop;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {toadslop.bookshop as bookshop} from './index';

entity Reviews : cuid, managed {
    book   : Association to bookshop.Books;
    rating : bookshop.Rating @assert.range;
    title  : bookshop.Name @mandatory;
    text   : bookshop.Text @mandatory;
}
