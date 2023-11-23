using { sap.capire.SchoolManagement as my } from '../db/schema';

service SchoolService @(requires:'authenticated-user') {
  entity Department as projection on my.Department;
  entity Teacher as projection on my.Teacher;
}
