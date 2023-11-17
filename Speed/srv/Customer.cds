using {com.ladera.utcl.speed as project} from '../db/Schema';

service Customer  {

    entity Customer as projection on project.Customer;

}