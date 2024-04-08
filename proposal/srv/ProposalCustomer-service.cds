namespace ProposalCustomer.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service  ProposalCustomer{
    entity ProposalCustomer as projection on db.PS_CUSTOMER_ORG;
    entity ProposalCustomerContact as projection on db.PS_CUSTOMER_ORG_CONTACT;
}