using {com.ladera.utcl.speed as project} from '../db/Schema';

service CartEntry {

    entity CartEntry as projection on project.CartEntry;

}