namespace ProposalType.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service  ProposalType{
    entity ProposalType as projection on db.PS_PROJECT_TYPE;
}