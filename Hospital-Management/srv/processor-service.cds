using { com.ladera.Hospitals as my} from '../db/schema';
service ProcessorService {
    
    entity Department as projection on my.Department;
    entity Employees as projection on my.Employees;
    entity Patient as projection on my.Patient;
    entity Rooms as projection on my.Rooms;

}
