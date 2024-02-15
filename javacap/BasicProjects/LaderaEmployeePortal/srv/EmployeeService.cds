using {com.small.laderaemployeeportalmodels as models} from '../db/schema';

@path :'browse'
service EmployeeService{
    entity Employee as projection on models.Employee;
}