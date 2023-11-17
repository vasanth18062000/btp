using {com.ladera.utcl.speed as project} from '../db/Schema';

service ShippingMethod {

    entity ShippingMethod as projection on project.ShippingMethod;

}