namespace proposal.service;
using {com.ladera.sap.btp.contract.proposal.systems as db} from '../db/schema';



service proposal {
    entity LoginCredentials as projection on db.PS_USER ;
    entity ProposalSupplier as projection on db.PS_VENDOR_ORG;

    entity ProposalSupplierContact as projection on db.PS_VENDOR_ORG_CONTACT;
    entity ProposalCustomer as projection on db.PS_CUSTOMER_ORG;
    entity ProposalCustomerContact as projection on db.PS_CUSTOMER_ORG_CONTACT;

    entity Mainsection as projection on db.MainSection;
    entity Subsection as projection on db.SubSection;   
    entity ProjectType as projection on db.ProjectType;
    entity ProposalDetails as projection on db.ProposalDetails;

}