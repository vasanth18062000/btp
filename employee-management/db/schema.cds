using { managed,  sap.common.CodeList} from '@sap/cds/common';

namespace lt.employeemanagement;

entity Client : managed {
    key id:String;
    code : String;
    name : String;
    poc:String;
    emailId:String;
    address : Association to Address;
    priority: Association to Priority; 
    projects : Association to many Project on projects.client = $self
    
}

entity Address {
    key id : String;
    addressline1:String;
    addressline2:String;
    city:String;
    pincode:String;
   
}

entity Project : managed {

    key projectId : String;
    projectName : String;
    projectCode:String;
    projectManager:String;
    phoneNumber:String;
    emailId:String;
    client : Association to Client;
    status:Association to Status;
    employees: Composition of many EmployeeProjectDetails on employees.project = $self;
  
    
}

entity Employee {
    key eid : String;
    name : String;
    email: String;
    phoneNumber : String;
    gender:Association to Gender;
    projects: Composition of many EmployeeProjectDetails on projects.employee = $self;
}

entity EmployeeProjectDetails{
    employee : Association to Employee;
    project : Association to Project;
}


entity Priority : CodeList {
  key code: String enum {
      HIGH = 'H';
      LOW = 'L'; 
      MEDIUM = 'M';  
    
  };
  criticality : Integer;
}

entity Status : CodeList {
  key code: String enum {
      OPEN = 'O';
      CLOSED = 'C'; 
      ONHOLD = 'H';
      INPROGRESS ='I';
  };
   
}

entity Gender : CodeList {
  key code: String enum {
      MALE = 'M';
      FEMALE = 'F';
  };
   
}


