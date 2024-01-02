using {employee.db as my} from '../db/schema';

service EmployeeService {

    entity Employee as projection on my.Employee;

    function demo() returns String;
    annotate Employee with @odata.draft.enabled;

}