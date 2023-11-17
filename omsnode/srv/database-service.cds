using {omsnode.db as dBase} from '../db/schema';

Service DatabaseService{
    entity Company as projection on dBase.Company;
    entity Employee as projection on dBase.Employee;
    entity FoodCourt as projection on dBase.FoodCourt;
    entity ItPark as projection on dBase.ItPark;
}
annotate DatabaseService.Company with @odata.draft.enabled; 