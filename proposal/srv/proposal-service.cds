namespace proposal.service;
using {proposal.db as db} from '../db/schema';
service proposal {

    entity Client as projection on db.ProposalClient;

    entity Vendor as projection on db.ProposalOwner;

    entity ClientDetails as projection on db.ProposalDetail;

}