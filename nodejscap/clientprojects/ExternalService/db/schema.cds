using {  OP_API_BUSINESS_PARTNER_SRV as bupa } from '../srv/external/OP_API_BUSINESS_PARTNER_SRV';

    entity Suppliers as projection on bupa.A_BusinessPartner {
        key BusinessPartner as ID,
        BusinessPartnerFullName as fullName,
        BusinessPartnerIsBlocked as isBlocked,
}