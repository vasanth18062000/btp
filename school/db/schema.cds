namespace school.db;
using{cuid} from `@sap/cds/common`;

entity School:cuid{
name:String;
address:Association to Address;

}
entity Student{
    key rollnumber:String;
    firstname:String;
    lastname:String;
    class:String;
    dateoOfBirth:Date;
    school:Association to School;
}
entity Teacher{
    key ID:UUID;
    firstname:String;
    lastname:String;
    position:String;
    phonenumber:String;
    address:Association to Address;
    school:Association to School;

}
entity Address{
    Key ID:Integer;
    doorNo:String;
    street:String;
    city:String;
    State:String;
    pincode:String;
}

