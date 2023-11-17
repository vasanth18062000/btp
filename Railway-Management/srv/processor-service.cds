using {com.ladera.railways as railway} from '../db/schema';

service Railway {

    entity Employes_Detail as projection on railway.Employees;

    entity department as projection on railway.Department;

    entity organisation as projection on railway.Organisation;

    entity Address as projection on railway.Employees.address;

}