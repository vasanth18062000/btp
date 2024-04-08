namespace ProposalDetails.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service ProposalDetails {
    entity ProposalDetails as projection on db.PS_DETAILS;
}