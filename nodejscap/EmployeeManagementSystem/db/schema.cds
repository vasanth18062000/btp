using {cuid,managed} from '@sap/cds/common';
namespace com.ladera.employeemanagementsystem;

entity Employee:managed{
  key employeeId:Integer;
  employeeName:String;
  designation:String;
  departmentNumber:Association to Department;//one to one(bi)
}

entity Department:managed{
  key deptNumber:Integer;
  deptCode:String;
  employees:Association to Employee;//one to one((bi))
}




