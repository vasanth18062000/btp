
using {com.api.entities as index} from './external';
using {API_BUSINESS_PARTNER as api} from './external/API_BUSINESS_PARTNER';


namespace com.mashup;
service MyService {
    entity Customer as projection on index.Customer;
    entity CustAddrDepdntExtIdentifier as projection on index.CustAddrDepdntExtIdentifier;
    entity CustomerCompany as projection on index.CustomerCompany;
    entity CustomerSalesArea as projection on index.CustomerSalesArea;
    entity CustomerUnloadingPoint as projection on index.CustomerUnloadingPoint;
    entity CustomerTaxGrouping as projection on index.CustomerTaxGrouping;
    entity CustomerText as projection on index.CustomerText;
    

}
annotate index.Customer with @cds.persistence :{table,skip:false};
annotate index.CustAddrDepdntExtIdentifier with @cds.persistence :{table,skip:false};
annotate index.CustomerCompany with @cds.persistence: { table,skip:false };
annotate index.CustomerSalesArea with @cds.persistence: { table,skip:false };
annotate index.CustomerUnloadingPoint with @cds.persistence: { table,skip:false };
annotate index.CustomerText with @cds.persistence:{table,skip:false};
annotate index.CustomerTaxGrouping with @cds.persistence:{table,skip:false};

