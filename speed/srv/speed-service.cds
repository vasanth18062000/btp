using {com.ladera.utcl.speed as speed} from '../db/schema';

Service SpeedService{
    entity Customer as projection on speed.Customer;
    entity Address as projection on speed.Address;
    entity Product as projection on speed.Product;
    
}