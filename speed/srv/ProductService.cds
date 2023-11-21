using {com.ladera.utcl.speed as project} from '../db/schema';

service Product {

    entity Products as projection on project.Product;
}