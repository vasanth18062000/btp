using {com.ladera.cerafurnitures as cerafurniturespack} from '../db/schema';

service CeraFurnituresService{
    entity Customer as projection on cerafurniturespack.Customer;
    entity Order as projection on cerafurniturespack.Order;
    entity Product as projection on cerafurniturespack.Product;
}

