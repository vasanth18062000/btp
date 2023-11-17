using {com.hms.address as address} from '../db/AddressSchema';
service AddressService {

    entity Address as projection on address.Address;

}