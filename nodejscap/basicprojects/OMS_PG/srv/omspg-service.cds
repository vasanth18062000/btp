using {com.ladera.omspg as oms} from  '../db/schema';

service OmspgService{
    entity Customer @(restrict:      [  {
            grant: ['READ'],
            to   : ['CustomerViewer']
        },
        {
            grant: ['*'],
            to   : ['CustomerAdmin']
        }
    ]) as projection on oms.Customer;
 
    annotate Customer with @odata.draft.enabled;
}
    