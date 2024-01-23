using {managed } from '@sap/cds/common';
namespace employee.db;


entity Employee {
    key ID : Integer;
    firstName   : String;
    lastName:String;
    age:Integer;
    location:String;
  }