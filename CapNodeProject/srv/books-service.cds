using com.capnodeproject as cap from '../db/schema';

service bookService{
    entity Books as projection on cap.Books;
}