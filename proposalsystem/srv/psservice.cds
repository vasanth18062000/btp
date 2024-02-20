using { com.ladera.proposalsystemmodels as psModels } from '../db/psschema';


namespace com.ladera.proposalSystemServices;




service PropsalSystem {

    entity UserCredentials as projection on psModels.LoginCredentials;

    entity ProposalOwner as projection on psModels.ProposalOwner;

    entity ProposalOwnerContact as projection on psModels.ProposalOwnerContact;

    entity ProposalClient as projection on psModels.ProposalClient;

    entity ProposalClientContact as projection on psModels.ProposalClientContact;

    entity ProposalDetails as projection on psModels.ProposalDetails;

    entity MainSection as projection on psModels.MainSection;

    entity SubSection as projection on psModels.SubSection;

    entity ProjectType as projection on psModels.ProjectType;

    entity MainTableFields as projection on psModels.MainTableFields;

}
