using {OMS_PG.db as OMS} from '../db/schema';

service OmspgService {
    entity Customer @(restrict:[
        {
            grant:['*'],
            to:['Developer']
        },
        {
         grant:['READ'],
         to:['Tester']
        }
    ]) as projection on  OMS.Customer;
    
}

