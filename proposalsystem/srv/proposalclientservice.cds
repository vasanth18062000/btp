using {com.ladera.proposalsystemmodels as schema} from '../db/schema';



service Proposalclientservice {

    entity ProposalClient as projection on schema.ProposalClient;

    entity ProposalClientContact as projection on schema.ProposalClientContact;
    
}