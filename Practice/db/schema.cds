namespace com.ladera.practice;

entity Employee {
       id : Integer;
       name : String;
       address : String;
}

context Management {
    entity Manager {
        id : Integer;
        name : String;
    }
}
