namespace proposal.service;
using {proposal.db as db} from '../db/datamodel';

service MyService {

    entity User as projection on db.PS_USER;

    entity ProposalSupplier as projection on db.PS_VENDOR_ORG;

    entity ProposalSupplierContact as projection on db.PS_VENDOR_ORG_CONTACT;

    entity ProposalCustomer as projection on db.PS_CUSTOMER_ORG;

    entity ProposalCustomerContact as projection on db.PS_CUSTOMER_ORG_CONTACT;

}