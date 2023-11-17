service BookStoreService {
    entity Books {
        key ID : Integer;
        title  : String(111);
        genre : String(45);
    }
}