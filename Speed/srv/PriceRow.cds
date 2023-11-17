using {com.ladera.utcl.speed as project} from '../db/Schema';

service PriceRow {

    entity Price as projection on project.PriceRow;

}