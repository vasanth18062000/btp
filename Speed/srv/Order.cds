using {com.ladera.utcl.speed as project} from '../db/Schema';

service Order {

    entity Order as projection on project.Order;

}