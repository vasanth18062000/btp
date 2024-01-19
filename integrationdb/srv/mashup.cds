using{com.ladera.businessservice as serv} from './businesspartnerservice';


namespace com.ladera.linkapi;



service LinkApi {
    entity A_BusinessPartner  as projection on serv.A_BusinessPartner;
    entity A_BusinessPartnerAddress as projection on serv.A_BusinessPartnerAddress;
    entity A_AddressEmailAddress as projection on serv.A_AddressEmailAddress;
    
    entity A_BusinessPartnerBank as projection on serv.A_BusinessPartnerBank;
}





