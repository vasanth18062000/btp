using {com.ladera.index as indexex} from './external';

// using{API_BUSINESS_PARTNER as api} from './external/API_BUSINESS_PARTNER';

namespace com.ladera.mashup;

service MyService {

    entity EmailAddress as projection on indexex.EmailAddress;
    entity BusinessPartner as projection on indexex.BusinessPartner;
    entity bupaIndustry as projection on indexex.bupaIndustry;
    entity bprelation as projection on indexex.bprelation;
    entity bpinteladdress as projection on indexex.bpinteladdress;
    entity bpyearinformation as projection on indexex.bpyearinformation;
    entity bpcreditinformation as projection on indexex.bpcreditinformation;
    entity bpcontactaddress as projection on indexex.bpcontactaddress;
    entity bupaIdentyfication as projection on indexex.bupaIdentyfication;
    entity bpdatacontrol as projection on indexex.bpdatacontrol;
    entity AddressFaxNo as projection on indexex.AddressFaxNo;
    entity AddressHomepage as projection on indexex.AddressHomepage;
    
        
        
    }
   annotate indexex.BusinessPartner with @cds.persistence : {table,skip:false};
   annotate indexex.EmailAddress with @cds.persistence : {table,skip:false};
   annotate indexex.bupaIndustry with @cds.persistence : {table,skip:false};
   annotate indexex.bprelation with @cds.persistence : {table,skip:false};
   annotate indexex.bpinteladdress with @cds.persistence : {table,skip:false};
   annotate indexex.bpyearinformation with @cds.persistence : {table,skip:false};
   annotate indexex.bpcreditinformation with @cds.persistence : {table,skip:false};
   annotate indexex.bpcontactaddress with @cds.persistence : {table,skip:false};
   annotate indexex.AddressFaxNo with @cds.persistence : {table,skip:false};
   annotate indexex.AddressHomepage with @cds.persistence : {table,skip:false};
   