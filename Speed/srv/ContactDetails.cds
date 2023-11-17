using {com.ladera.utcl.contact as Contact} from '../db/Schema';

service ContactDetails {

    entity ContactDetails as projection on Contact.ContactDetails;

}