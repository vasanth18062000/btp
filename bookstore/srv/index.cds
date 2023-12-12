using {toadslop.bookshop as book} from '../db';


service BookShop {

    entity books as projection on book.Books;

}
