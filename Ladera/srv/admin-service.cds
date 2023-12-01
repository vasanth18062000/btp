using {com.sap.ladera as la} from '../db/schema';

service AdminService {
    entity Products   as projection on la.Products;
    entity Categories as projection on la.Categories;
}