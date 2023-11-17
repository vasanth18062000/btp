using {com.hms.patient as patient} from '../db/PatientSchema';
service PatientService {

    entity Patient as projection on patient.Patient;

}