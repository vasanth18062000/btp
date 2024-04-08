namespace ProposalSupplier.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';

service ProposalSupplier {
    entity ProposalSupplier as projection on db.PS_VENDOR_ORG;
    entity ProposalSupplierContact as projection on db.PS_VENDOR_ORG_CONTACT;    
}