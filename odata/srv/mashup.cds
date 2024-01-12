using{com.ladera.businessservice as serv} from './businesspartnerservice';


namespace com.ladera.linkapi;



service LinkApi {
    entity A_BusinessPartner  as projection on serv.A_BusinessPartner;
    entity A_BusinessPartnerAddress as projection on serv.A_BusinessPartnerAddress;
    entity A_AddressEmailAddress as projection on serv.A_AddressEmailAddress;
    entity A_AddressFaxNumber as projection on serv.A_AddressFaxNumber;
    entity A_AddressHomePageURL as projection on serv.A_AddressHomePageURL;
    entity A_AddressPhoneNumber as projection on serv.A_AddressPhoneNumber;
    entity A_BPAddrDepdntIntlLocNumber as projection on serv.A_BPAddrDepdntIntlLocNumber;
    entity A_BPContactToAddress as projection on serv.A_BPContactToAddress;
    entity A_BPContactToFuncAndDept as projection on serv.A_BPContactToFuncAndDept;
    entity A_BusinessPartnerBank as projection on serv.A_BusinessPartnerBank;
}


annotate serv.A_BusinessPartner with @cds.persistence : {table,skip:false};
   annotate serv.A_BusinessPartnerAddress with @cds.persistence : {table,skip:false};
   annotate serv.A_AddressEmailAddress with @cds.persistence : {table,skip:false};
   annotate serv.A_AddressFaxNumber with @cds.persistence : {table,skip:false};
   annotate serv.A_AddressHomePageURL with @cds.persistence : {table,skip:false};
   annotate serv.A_AddressPhoneNumber with @cds.persistence : {table,skip:false};
   annotate serv.A_BPAddrDepdntIntlLocNumber with @cds.persistence : {table,skip:false};
   annotate serv.A_BPContactToAddress with @cds.persistence : {table,skip:false};
   annotate serv.A_BPContactToFuncAndDept with @cds.persistence : {table,skip:false};
   annotate serv.A_BusinessPartnerBank with @cds.persistence : {table,skip:false};


