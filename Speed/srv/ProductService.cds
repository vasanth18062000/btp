using { com.utcl.db as product } from '../db/Schema';
service ProductService {

   entity Product as projection on product.Product; 

}