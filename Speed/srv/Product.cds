using {com.ladera.utcl.speed as project} from '../db/Schema';

service Product {

    entity Products as projection on project.Product;

    annotate project.Product with @odata.draft.enabled;

    annotate project with @(requires:'support');

}