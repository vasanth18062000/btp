using{com.ladera.businessservice as serv} from './businesspartnerservice';
using {com.ladera.schema as schem} from '../db/schema';

namespace com.ladera.linkapi;



service LinkApi {
    entity Customer  as projection on serv.BusinessPartner;
    entity Address_Partner as projection on serv.Address_Partner;
    entity Email_Partner as projection on serv.Email_Partner;
    entity AddressFax as projection on serv.AddressFax;
    entity AddressHomePage as projection on serv.AddressHomePage;
    entity AddressPhoneNumber as projection on serv.AddressPhoneNumber;
    entity DepdntIntlLocNumber as projection on serv.DepdntIntlLocNumber;
    entity BPContactToAddress as projection on serv.BPContactToAddress;
    entity BPContactToFuncAndDept as projection on serv.BPContactToFuncAndDept;
    entity BusinessPartnerBank as projection on serv.BusinessPartnerBank;
    

     entity Risks as projection on schem.Risks;
    entity Mitigations as projection on schem.Mitigations;

    @readonly
    entity Suppliers @(restrict : [
              {
                  grant : [ 'READ' ],
                  to : [ 'RiskViewer', 'RiskManager' ]
              }
          ]) as projection on serv.Suppliers;

   
}




annotate serv.BusinessPartner with @cds.persistence : {table,skip:false};
annotate serv.Email_Partner with @cds.persistence :{table,skip:false};
annotate serv.AddressFax with @cds.persistence :{table,skip:false};

annotate serv.Address_Partner with @cds.persistence :{table,skip:false};

annotate serv.AddressHomePage with @cds.persistence: { table,skip:false };

annotate serv.AddressPhoneNumber with @cds.persistence:{table,skip:false};

annotate serv.BPContactToAddress with @cds.persistence:{table,skip:false};

annotate serv.BPContactToFuncAndDept with @cds.persistence :{table,skip:false};

annotate serv.DepdntIntlLocNumber with @cds.persistence :{table,skip:false};

annotate serv.BusinessPartnerBank with @cds.persistence :{table,skip:false};

annotate serv.Suppliers with  @cds.persistence :{table,skip:false};



extend service LinkApi {

  @topic: 'sap.s4.beh.businesspartner.v1.BusinessPartner.Created.v1'
  event Created : {
    BusinessPartner : serv.BusinessPartner:Customer
  }

  @topic: 'sap.s4.beh.businesspartner.v1.BusinessPartner.Changed.v1'
  event Changed : {
      BusinessPartner : serv.BusinessPartner:Customer
  }
}



// annotate serv.BusinessPartner with @odata.draft.enabled;


