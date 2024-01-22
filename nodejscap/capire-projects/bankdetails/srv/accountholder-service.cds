 using {com.ladera.bankdetails as localschemas} from '../db/schema';


service AccountHolderService{
    entity AccountHolder as select from localschemas.local.AccountHolder order by name desc;
}