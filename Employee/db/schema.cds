using {cuid,managed} from '@sap/cds/common';
namespace Employee.db;
entity Employee:cuid,managed{
name:String;
designation:String;
age:Integer;
departmentnumber:Association to Department;
}
entity Department : cuid {
    departmentname:String;
    location:String;
    departmentcode:String;
}