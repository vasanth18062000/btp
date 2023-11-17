using { sap.capire.school as my } from '../db/schema';
service ProcessorService {

    entity Students as projection on my.Students;
    entity Teacher as projection on my.Teacher;

}
annotate ProcessorService.Students with @odata.draft.enabled;
