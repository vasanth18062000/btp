using {hanaexample.db as db} from '../db/schema';


service hanaservice {

    entity customer as projection on db.Customer;
    entity Address as projection on db.Addresss;

}

