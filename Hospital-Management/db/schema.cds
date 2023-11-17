using{cuid, managed} from '@sap/cds/common';
namespace com.ladera.Hospitals;

entity Employees : cuid {
    key employeeID : String;
    departmentName : String;
    firstName : String @mandatory;
    lastName : String @mandatory;
    employeeName : String= firstName || ' ' ||  lastName;
    gender : Gender;
    designation : String;
    service : String;
    department : Association to Department;
}

entity Department : cuid {
    key departmentID : String;
    departmentName : String;
    service : String;
    employees : Association to Employees;
}

entity Patient : cuid {
    key admissionID : String;
    firstName : String @mandatory;
    lastName : String @mandatory;
    gender : Gender;
    address : String;
    patientType : String @assert.range enum{CHILD; ADULT; OLD;};
    description : String;
    profilePicture : String;
    phoneNumber : String;
    criticality : String @assert.range enum{GOOD; AVERAGE; LOW};
}

entity Rooms : cuid{
    roomNumber : String;
    roomType : String @assert.range enum{SINGLE_ROOM; GENERAL_WARD};
    roomStatus : Availablity;
}

type Gender : String @assert.range enum{MALE; FEMALE; M; m; F; f;};
type Availablity : String @assert.range enum{AVAILABLE; NOT_AVAILABLE;};
