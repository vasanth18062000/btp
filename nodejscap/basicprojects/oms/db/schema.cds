using {managed} from '@sap/cds/common';
namespace com.ladera.oms;

entity Customer{
    key customerId:Integer;
    mobile:Integer;
    email:String;
    password:String;
    name:String;
    age:Integer;
    gender:String;
    orderId:Association to many Order on orderId.customerId=$self; //one to many (bi)
    address:Association to many Address on address.customerId=$self; //one to many (bi)

}

entity Order{
    key orderId:Integer;
    orderCode:String;
    customerId:Association to Customer; //one to many (bi)
}

entity Address{
    key addressId:Integer;
    doorno:String;
    street:String;
    pincode:Integer;
    state:String;
    nationality:String;
    addressType:String;
    customerId:Association to Customer; //one to many (bi)

}