using{com.ladera.sap.btp.contract.proposal.systems as schema}from '../db/schema';

service ProposalSystemServices {

    // entity PS_USER as projection on schema.PS_USER;
    entity PS_VENDOR_ORG  as projection on schema.PS_VENDOR_ORG;
        //annotate PS_VENDOR_ORG with @odata.draft.enabled;

    entity PS_CUSTOMER_ORG as projection on schema.PS_CUSTOMER_ORG;
    entity PS_VENDOR_ORG_CONTACT as projection on schema.PS_VENDOR_ORG_CONTACT;
            //annotate PS_VENDOR_ORG_CONTACT with @odata.draft.enabled;

    entity PS_CUSTOMER_ORG_CONTACT as projection on schema.PS_CUSTOMER_ORG_CONTACT;
    entity PS_DETAILS as projection on schema.PS_DETAILS;
    entity PS_MAIN_SECTION  as projection on schema.PS_MAIN_SECTION;
    entity PS_SUB_SECTION  as projection on schema.PS_SUB_SECTION;
    entity PS_PROJECT_TYPE  as projection on schema.PS_PROJECT_TYPE;
    entity PS_TEMPLATE  as projection on schema.PS_TEMPLATE;
   
}   