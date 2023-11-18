using{Employee.db as my} from '../db/schema';

service MyService {
entity Emp as projection on my.Employee;
entity Dept as projection on my.Department;
}