using{managed} from '@sap/cds/common';
namespace com.ladera.cerafurnitures;

define entity Customer:managed{
    key id:Integer;
    name:String;
    email:String;
    password:String;
    mobile:String;
    gender:String;
    customerStatus:String;
    orders:Association to many Order on orders.customer=$self;
    
}

define entity Order{
    key id:Integer;
    orderQuantity:String;
    customer:customers;
    products:Composition of many {key product:Association to Product};
}

define type customers:Association to Customer;

define entity Product:managed{
    key id:Integer;
    productCode:prCode;
    productDescription:String;
    color:String;
    size:String;
    orders:Composition of many Order.products on orders.product=$self;
}

define type prCode:String(100); 



 