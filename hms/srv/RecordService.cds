using {com.hms.records as records} from '../db/RecordsSchema';
service RecordsService {

    entity Record as projection on records.Records;

}