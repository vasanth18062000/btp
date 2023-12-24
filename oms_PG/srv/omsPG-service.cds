using {com.ladera.omsPG as my} from '../db/schema';

service OmsPGService {

    entity Customer  @(restrict: [
        {
            grant: ['READ'],
            to   : ['CustomerViewer']
        },
        {
            grant: ['*'],
            to   : ['CustomerAdmin']
        }
    ]) as projection on my.Customer;

    annotate Customer with @odata.draft.enabled;
}