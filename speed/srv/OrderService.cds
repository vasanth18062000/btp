using {com.ladera.utcl.speed as project} from '../db/schema';

service Order {

    entity Order as projection on project.Order;
}