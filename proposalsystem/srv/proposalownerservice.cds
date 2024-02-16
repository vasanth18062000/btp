using {com.ladera.proposalsystemmodels as schema} from '../db/schema';

service proposalownerservice {
    entity ProposalOwner as projection on schema.ProposalOwner;
    entity ProposalOwnerContact as projection on schema.ProposalOwnerContact;
}