using{com.ladera.sap.btp.contract.proposal.systems as schema}from '../db/schema';

service ProposalSystemServices {

    // entity PS_USER as projection on schema.PS_USER;
    entity PS_VENDOR_ORG @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_VENDOR_ORG;
        annotate PS_VENDOR_ORG with @odata.draft.enabled;

    entity PS_CUSTOMER_ORG @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_CUSTOMER_ORG;
    entity PS_VENDOR_ORG_CONTACT @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_VENDOR_ORG_CONTACT;
            annotate PS_VENDOR_ORG_CONTACT with @odata.draft.enabled;

    entity PS_CUSTOMER_ORG_CONTACT @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_CUSTOMER_ORG_CONTACT;
    entity PS_DETAILS @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_DETAILS;
    entity PS_MAIN_SECTION @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_MAIN_SECTION;
    entity PS_SUB_SECTION @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_SUB_SECTION;
    entity PS_PROJECT_TYPE @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_PROJECT_TYPE;
    entity PS_TEMPLATE @(restrict : [
            {grant : [ 'READ' ],to : [ 'Viewer' ]},
            {grant : [ '*' ],to : [ 'Manager' ]}]) as projection on schema.PS_TEMPLATE;
   
}   