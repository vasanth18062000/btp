using {com.ladera.businesspartner as bplocalentities} from '../db/schema';
using {incidents.serve as bt} from './IncidentsService';
using {com.ladera.featuresentitybind as custom} from './external/businesspartnerexternalservice';


extend service bt.IncidentsService with {
  entity Customers as projection on custom.Customers;
}

extend bplocalentities.Incidents with {
  customer : Association to custom.Customers;
}

annotate custom.Customers with @cds.persistence: { table,skip:false };
// annotate s4.simple.Address_Partner with @cds.persistence: { table,skip:true };