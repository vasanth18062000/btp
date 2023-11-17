using {com.hms.specialist as specialist} from '../db/SpecialistSchema';
service SpecialistService {

    entity Specialist as projection on specialist.Specialist;

}