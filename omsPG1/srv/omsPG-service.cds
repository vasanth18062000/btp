using {com.ladera.omsPG} from '../db/schema';

service OmsPgService {

    //entity Customer as projection on omsPG.Customer;
    entity Customer @(restrict:[
        {
            grant: ['READ'],
            to:['CustomerViewer']
        },
        {
            grant:['*'],
            to:['CustomerAdmin']
        }
    ]) as projection on omsPG.Customer;

    annotate Customer with @odata.draft.enabled;
    
}