using {com.ladera.schema as bp} from '../db/schema';
using {com.ladera.index as inde} from './external';
using {API_BUSINESS_PARTNER as api} from './external/API_BUSINESS_PARTNER';
using {com.ser as serv} from './incident-service';

namespace com.ladera.mashup;



extend service serv.MyService with{
    entity Customer  as projection on inde.Customer;

    entity Business_partner  @(restrict : [
    {
        grant :['Read'],
        to : ['ajay']   
         },

         {
            grant : ['*'],
            to : ['francis']
         }

]) as projection on serv.MyService.Customer;
}

extend service serv.MyService with {
    entity Address_Partner as projection on inde.Address_Partner;
}

extend service serv.MyService with {
    entity Email_Partner as projection on inde.Email_Partner
}

extend service serv.MyService with{
    entity AddressFax as projection on inde.AddressFax
}


extend service serv.MyService with {
    entity AddressHomePage as projection on inde.AddressHomePage
}

extend service serv.MyService with{
    entity AddressPhoneNumber as projection on inde.AddressPhoneNumber
}

extend service serv.MyService with{
    entity DepdntIntlLocNumber as projection on inde.DepdntIntlLocNumber
}

extend service serv.MyService with {
    entity BPContactToAddress as projection on inde.BPContactToAddress
}

extend service serv.MyService with {
    entity BPContactToFuncAndDept as projection on inde.BPContactToFuncAndDept
}

extend service serv.MyService with {
    entity BusinessPartnerBank as projection on inde.BusinessPartnerBank
}



extend bp.Incidents with{
    customer : Association to inde.Customer;
}

extend bp.Incidents with {
    address : Association to inde.Address_Partner;
}





annotate inde.Email_Partner with @cds.persistence :{table,skip:false};
annotate inde.AddressFax with @cds.persistence :{table,skip:false};

annotate inde.AddressHomePage with @cds.persistence: { table,skip:false };

annotate inde.AddressPhoneNumber with @cds.persistence:{table,skip:false};

annotate inde.BPContactToAddress with @cds.persistence:{table,skip:false};

annotate inde.BPContactToFuncAndDept with @cds.persistence :{table,skip:false};

annotate inde.DepdntIntlLocNumber with @cds.persistence :{table,skip:false};



annotate serv.MyService.Business_partner with @odata.draft.disabled;

annotate serv.MyService.Customer with @odata.draft.disabled;


