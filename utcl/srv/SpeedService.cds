using {com.ladera.utcl.speed as project} from '../db/schema';

service Customer  {

    entity Customer as projection on project.Customer;
    entity Product as projection on project.Product;
    entity Address as projection on project.Address;
    entity Cart as projection on project.Cart;
    entity Order as projection on project.Order;
    entity Stock as projection on project.StockLevel;
    entity warehouse as projection on project.Warehouse;


}