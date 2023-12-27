using {cm.ladera.bookmycinema as domainmodels} from '../db/schema';

service BookmycinemaService {
    entity ClientDetails as projection on domainmodels.UserDetails;
    entity payment as projection on domainmodels.payment;
}

annotate domainmodels.UserDetails with @odata.draft.enabled;

