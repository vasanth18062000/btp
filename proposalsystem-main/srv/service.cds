// Importing the entities from the schema
using com.ladera.proposalsystemmodels as db from '../db/schema';

// Service definition
service ProposalService {
 // Projections for PS_USER entity
    entity PS_USER as projection on db.PS_USER ; 

    // Projections for PS_VENDOR_ORG entity
    entity PS_VENDOR_ORG as projection on db.PS_VENDOR_ORG;

    // Projections for PS_VENDOR_ORG_CONTACT entity
    entity PS_VENDOR_ORG_CONTACT as projection on db.PS_VENDOR_ORG_CONTACT;

    // Projections for PS_CUSTOMER_ORG entity
    entity PS_CUSTOMER_ORG as projection on db.PS_CUSTOMER_ORG;

    // Projections for PS_CUSTOMER_ORG_CONTACT entity
    entity PS_CUSTOMER_ORG_CONTACT as projection on db.PS_CUSTOMER_ORG_CONTACT;

    // Projections for PS_DETAILS entity
    entity PS_DETAILS as projection on db.PS_DETAILS;

    // Projections for PS_MAIN_SECTION entity
    entity PS_MAIN_SECTION as projection on db.PS_MAIN_SECTION;

    // Projections for PS_SUB_SECTION entity
    entity PS_SUB_SECTION as projection on db.PS_SUB_SECTION;

    // Projections for PS_PROJECT_TYPE entity
    entity PS_PROJECT_TYPE as projection on db.PS_PROJECT_TYPE;

    // Projections for PS_TEMPLATE entity
    entity PS_TEMPLATE as projection on db.PS_TEMPLATE;

}
