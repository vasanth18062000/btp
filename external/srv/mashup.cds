using {com.ladera.schema as bp} from '../db/schema';
using {com.ladera.index as inde} from './external';
using {API_BUSINESS_PARTNER as api} from './external/API_BUSINESS_PARTNER';
using {com.ser as serv} from './incident-service';

namespace com.ladera.mashup;



extend service serv.MyService with{
    entity Customer as projection on inde.Customer;
}

extend service serv.MyService with {
    entity A_Supplier as projection on inde.A_Supplier;
}

extend service serv.MyService with {
    entity A_SupplierCompany as projection on inde.A_SupplierCompany;
}

extend service serv.MyService with{
    entity A_BusinessPartnerAddress as projection on inde.A_BusinessPartnerAddress;
}




annotate inde.Email_Partner with @cds.persistence :{table,skip:false};
annotate inde.AddressFax with @cds.persistence :{table,skip:false};

annotate inde.AddressHomePage with @cds.persistence: { table,skip:false };

annotate inde.AddressPhoneNumber with @cds.persistence:{table,skip:false};

annotate inde.BPContactToAddress with @cds.persistence:{table,skip:false};

annotate inde.BPContactToFuncAndDept with @cds.persistence :{table,skip:false};

annotate inde.DepdntIntlLocNumber with @cds.persistence :{table,skip:false};