using {com.ladera.utcl.speed as project} from '../db/schema';

service Warehouse {

    entity warehouse as projection on project.Warehouse;
}