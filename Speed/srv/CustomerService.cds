using {com.ladera.utcl.speed as project} from '../db/Schema';

service Customer  {

    entity Customer as projection on project.Customer;
    entity Address as projection on project.Address;
    entity Cart @insertonly as projection on project.Cart;
    entity Order as projection on project.Order;
    entity Products as projection on project.Product;
    entity Stock as projection on project.StockLevel;
    entity warehouse as projection on project.Warehouse;

}
annotate Customer.Customer with @odata.draft.enabled;