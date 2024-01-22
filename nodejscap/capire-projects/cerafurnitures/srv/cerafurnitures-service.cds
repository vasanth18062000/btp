using {com.ladera.cerafurnitures as my} from '../db/schema';


service cerafurnituresService{
    entity Customer as select from my.Customer;
}