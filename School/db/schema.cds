using { cuid, managed } from '@sap/cds/common';
namespace sap.capire.school;

entity Students : cuid {
    key ID : String;
    studentName : String;
    email : String;
    address : String;
    mobileNo : String;
    inchargeName : Association to many Students;
}

entity Teacher : cuid {
    key ID : String;
    teacherName : String;
}
