using {com.ladera.ui as project} from '../db/schema';

service Customer  {

    entity Customer as projection on project.Customer;

}


