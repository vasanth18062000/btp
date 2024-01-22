namespace com.ladera.udemyedumodels;
context Schema {
entity Employee{
    key id:Integer;
    name:String;
    dept:String;
}

entity Department {
    key id:Integer;
    name:String;
    location:String;
}
}



