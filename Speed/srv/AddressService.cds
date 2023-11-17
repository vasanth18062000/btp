using { com.utcl.db as address } from '../db/Schema';
service AdressService {

    entity Address as projection on address.Address;

}
