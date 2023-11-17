using {com.ladera.utcl.speed as project} from '../db/Schema';

service StockLevel {

    entity StockLevel as projection on project.StockLevel;

}