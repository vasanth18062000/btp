using {com.ladera.laderamanagementsystemlogapp as lmslogapp} from '../db/schema';
service LaderaManagementSystemLogService {
    entity Employees as projection on lmslogapp.Employee;
}