using {com.ladera.employeemanagementsystem as projectpack } from '../db/schema';

service EmployeeManagementSystemService{
    entity Employee as projection on projectpack.Employee;
    entity Department as projection on projectpack.Department;
}

extend projection EmployeeManagementSystemService.Employee with{
    employeeName as ename:String
}