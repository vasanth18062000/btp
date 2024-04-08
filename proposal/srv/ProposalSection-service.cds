namespace ProposalSection.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service  ProposalSection{
    entity ProposalMainSection as projection on db.PS_MAIN_SECTION;
    entity ProposalSubSection as projection on db.PS_SUB_SECTION;
}