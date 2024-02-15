namespace com.ladera.schemas;

entity User{
    key id:Integer;
    name:String(50);
    mobile:String (15);
    email:String (20);
}