namespace proposal.service;
using {com.ladera.proposalsystemmodels as db} from '../db/schema';
service proposal {

    entity LoginCredentials as projection on db.LoginCredentials;

    entity Vendor as projection on db.ProposalOwner;

    entity VendorContact as projection on db.ProposalOwnerContact;
    entity Client as projection on db.ProposalClient;
    entity ClientContact as projection on db.ProposalClientContact;

}