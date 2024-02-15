using {projectproposal.db as db} from '../db/schema';

service MyService {

    entity Client        as projection on db.ProposalClient;
    entity Vendor        as projection on db.ProposalOwner;
    entity ClientDetails as projection on db.ProposalDetail;
    entity TableDetail   as projection on db.TableDetail;

}
