using {OP_API_BUSINESS_PARTNER_SRV as external } from './external/OP_API_BUSINESS_PARTNER_SRV';

service BusinessService {

    entity Business as projection on external.A_Customer {
        Key Customer,AuthorizationGroup,BillingIsBlockedForCustomer,CustomerAccountGroup,CustomerFullName
    };
}