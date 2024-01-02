using { com.ladera.code as my} from '../db/schema';

service ProcessorService {

    entity Student as projection on my.student;
    entity Address as projection on my.address;
    entity Contact as projection on my.contact;

}

annotate ProcessorService.Student with @odata.draft.enabled;
