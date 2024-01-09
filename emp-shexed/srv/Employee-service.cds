using {emp.shexed.db as Emp} from '../db/schema';

service Employeeservice {

     entity Employee as projection on Emp.Employees;
}