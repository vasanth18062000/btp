using { sap.capire.bookshop as my } from '../db/schema';
service ProcessorService {

        entity bookName as projection on my.books;
        entity authorName as projection on my.Authors;
}