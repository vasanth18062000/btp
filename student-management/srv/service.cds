using {com.francis.studentManagement as student} from '../db/schema';

service StudentManagement {

    entity StudentDetail as projection on student.studentDetail;

    entity addressDetail as projection on student.addressDetail;

    entity ContactDetails as projection on student.contact;

}