using {com.ladera.ladera360application as lad360} from '../db/schema';

service ladera360applicationService {
    entity Employee as projection on lad360.Employee;
    entity Department as projection on lad360.Department;
}