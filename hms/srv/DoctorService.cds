using {com.hms.doctor as doctor} from '../db/DoctorSchema';
service DoctorService {

    entity Doctor as projection on doctor.Doctor;

}