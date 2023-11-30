using {cuid,managed} from '@sap/cds/common';
  namespace omsnode.db;




entity Company : cuid,managed{
    key ID:String;
    name :String(50);
    location:String(50);
    employeeCount:Integer;
    employees: Association to many Employee on employees.company=$self;  
    itPark: Association to ItPark;
}



entity Employee{
    company:Association to Company;
    key ID:String;
    name :String(50);
    email:String(50);
    contactNumber:Integer64;
    designation:String(50);  
}

entity FoodCourt  : managed,cuid{
    key ID:String;
      name : String ;
      merchandiseCount:Integer;
}

entity ItPark:managed{
    key ID:String;
    name:String;
    city:String;
    locality:String;
    pincode:Int32;
    foodCourt:Association to FoodCourt;
    client:Association to many Company on client.itPark=$self;
}




