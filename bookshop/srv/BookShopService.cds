using { com.ladera.bookshop as my} from '../db/books';

service BookShopService {
    
    entity Projects as projection on my.Projects;
    entity Users as projection on my.Users;
    entity Members as projection on my.Members;

}