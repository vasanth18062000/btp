namespace ProposalTemplate.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service  ProposalTemplate{
    entity ProposalTemplate as projection on db.PS_TEMPLATE;
}