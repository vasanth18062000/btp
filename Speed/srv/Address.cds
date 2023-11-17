using {com.ladera.utcl.speed as project} from '../db/Schema';

service Address {

    entity Address as projection on project.Address;

}