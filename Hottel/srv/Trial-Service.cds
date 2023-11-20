using {Hottel.db as my } from '../db/Schema';

Service TrialService
{
entity Hottel as projection on my.Branch ;
entity manager as projection on my.Manager ;
    
}
    

