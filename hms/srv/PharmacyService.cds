using {com.hms.pharmacy as pharmacy} from '../db/PharmacySchema';
service PharmacyService {

    entity Pharmacy as projection on pharmacy.Pharamacy;

}