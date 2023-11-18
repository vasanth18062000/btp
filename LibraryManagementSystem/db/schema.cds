using {cuid,managed,sap.common.CodeList} from '@sap/cds/common';
namespace LibraryManagementSystem.db;

entity Book{
  Key ID:Integer;
  title:String;
  category:String;
  price:Double;
  author:String;
  status:Association to Status;
  publisher:Association to Publisher;
}
entity Publisher {
    Key ID:Integer;
    name:String;
    dateOfPublish:Date;
}
entity Member:managed{
    Key UserID:Integer;
    firstname:String;
    lastname:String;
    email:String;
    phonenumber:String;
    address:Association to Address;
}
entity Staff {
    Key staffId:Integer;
    name:String;
}
entity Report:managed{
     Key registernumber:Integer;
     user:Association to Member;
     book:Association to Book;
     issueDate:Date;
     returnDate:Date;
}
entity Address{
    Key ID:Integer;
    doorNo:String;
    street:String;
    city:String;
    State:String;
    pincode:String;
}
entity Status:CodeList{
    key code:String enum{
    Available= 'A';
    NotAvailable='NA';
}
}