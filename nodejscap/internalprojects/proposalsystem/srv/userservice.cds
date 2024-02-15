using {com.ladera.sap.btp.contract.proposal.systems as schema} from '../db/schema';


service UserService{
    entity User as projection on schema.PS_USER;
}