using {com.ladera.utcl.speed as project} from '../db/schema';

service Product  {

    entity Customer as projection on project.Customer;
    entity Address as projection on project.Address;
    entity Product as projection on project.Product;
    entity Cart as projection on project.Cart;


}
annotate Product.Customer with @odata.draft.enabled;
annotate Product.Address with @odata.draft.enabled;


