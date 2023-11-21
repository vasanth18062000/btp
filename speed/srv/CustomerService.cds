using {com.ladera.utcl.speed as project} from '../db/schema';

service Customer  {

    entity Customer as projection on project.Customer;

}
annotate Customer.Customer with @odata.draft.enabled;
annotate Customer with @(requires:'support') ;

