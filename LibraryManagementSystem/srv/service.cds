using{LibraryManagementSystem.db as my} from `../db/schema`;
service LibraryService {

    
    entity  Member as projection on my.Member;
    entity Book as projection on my.Book;
    entity Staff as projection on my.Staff;
    entity Report as projection on my.Report;
    entity Publisher as projection on my.Publisher;
    entity Address as projection on my.Address;
    entity Status as projection on my.Status;  

}annotate LibraryService.Book with @odata.draft.enabled; 