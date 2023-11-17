using { com.utcl.db as stocklevel } from '../db/Schema';
service StockLevelService {

    entity StockLevel as projection on stocklevel.StockLevel;

}
