using {com.ladera.utcl.speed as project} from '../db/Schema';

service OrderEntry {

    entity OrderEntry as projection on project.OrderEntry;

}