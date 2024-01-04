using {com.ladera.utcl.speed as project} from '../db/schema';

service Cart  {
    entity Cart as projection on project.Cart;

}

annotate Cart.Cart with @odata.draft.enabled;

