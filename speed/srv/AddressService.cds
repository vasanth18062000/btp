using {com.ladera.utcl.speed as project} from '../db/schema';

service Address {

    entity Address as projection on project.Address;

}