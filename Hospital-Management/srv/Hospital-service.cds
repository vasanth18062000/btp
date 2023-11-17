using { com.ladera.hospital as hm } from '../db/schema';

service MyService {

    entity Hospital_Staff as projection on hm.Employees;

    entity Hospital_Department as projection on hm.Departments;
    
    entity Patients_Details as projection on hm.Patients; 

}