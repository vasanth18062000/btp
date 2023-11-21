using {cuid} from '@sap/cds/common';

namespace com.ladera.railways;

entity Organisation{

    employees_details : Composition of many Employees;
    department_details : Composition of many Department;
}  

entity Employees {
    
    firstName : String;
    lastName : String;
    EmployeeName : String = firstName || ' '|| lastName;
    gender : String @assert.range enum { M; F; O;};
    departmentName : String;
    department_det : Association to Department on department_det.departmentName=departmentName;
    key empId : Integer;
    designation : String;

    // Managed composition of aspectb 

    address : Composition of many{
        addressLine1 : String;
        addressLine2 : String;
        addressLine3 : String;
        state : String;
        country : String;
        zipCode : String;
    }

}

entity Department {

    key departmentName : String;
    // Employees_ : Association to employees;
    Emp_Id_ : Association to Employees on Emp_Id_.empId=Emp_Id;
    Emp_Id : Integer;

}



