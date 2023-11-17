using {cuid, managed} from '@sap/cds/common';

namespace com.ladera.hospital;

 entity Employees {
    employeeFirstName : String @mandatory;
    employeeLastName : String @mandatory;
    employeeName : String = employeeFirstName || ' '||employeeLastName;
    gender : gender ;
    key employeeId: String;

    employeeDepartId : Association to Departments on employeeDepartId.departmentId=employeeDepartmentId;
    employeeDepartmentId : String;

    address : String;
 }

 entity Departments{
    employeeId : Association to Employees on employeeId.employeeDepartId=$self;
     key departmentName : String;
     key departmentId : String;
     key services : String @assert.range enum {Doctor;Nurse; pharmacist;Cleaning;};
 }

 entity Patients {

    AddmissionId : String;
    patientFirstName : String;
    patientLastName : String;
    patientName : String = patientFirstName || ' ' || patientLastName;
    gender : gender;

    PatientAddress : String;
    employeeIDPatient : Association to Employees on employeeIDPatient.employeeId;

    patientType : String @assert.range enum{Child;Adult;Old;};
    criticallity : String @assert.range enum {Low;Medium;High;};
    description : String(1000);
   
     }

type gender : String @assert.range enum {M;m;F;f;Male;Female};
