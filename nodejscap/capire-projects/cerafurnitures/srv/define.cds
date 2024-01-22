using {com.ladera.cerafurnitures as my} from '../db/schema';

service Define{
    entity Employee as select from my.Customer; 
}