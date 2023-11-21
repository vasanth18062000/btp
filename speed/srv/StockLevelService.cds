using {com.ladera.utcl.speed as project} from '../db/schema';

service Stock {

    entity Stock as projection on project.StockLevel;
}