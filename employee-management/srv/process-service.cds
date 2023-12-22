using { lt.employeemanagement as employee } from '../db/schema';
service ProcessorService { 
    entity Client as projection on employee.Client;
     entity Project as projection on employee.Project;
     entity Address as projection on employee.Address;
     entity Employee as projection on employee.Employee;
      entity EmployeeProjectDetails as projection on employee.EmployeeProjectDetails;
      annotate ProcessorService.Client with @odata.draft.enabled

   
}

