using {com.ladera.oms as omspack} from '../db/schema'; 

service OmsService{
    entity Customer  as projection on omspack.Customer;
    entity Order as projection on omspack.Order;
    entity Address as projection on omspack.Address; 
}