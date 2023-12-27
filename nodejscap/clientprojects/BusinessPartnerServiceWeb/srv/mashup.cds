// using {com.ladera.businesspartner as bplocalentities} from '../db/schema';
// using {incidents.serve as bt} from './IncidentsService';
// using {com.ladera.featuresentitybind as custom} from './external/businesspartnerserviceweb';


// extend service bt.IncidentsService with {
//   entity BusinessPartner as projection on custom.BusinessPartners;
// }

// // extend service bt.IncidentsService with {
// //   entity Customers as projection on custom.Customers;
// // }

// // extend service bt.IncidentsService with {
// //   entity Address as projection on custom.Address;
// // }

// extend bplocalentities.Incidents with {
//   customer : Association to custom.Customers;
// }

// annotate custom.BusinessPartners with @cds.persistence: { table,skip:false };
// // annotate s4.simple.Address_Partner with @cds.persistence: { table,skip:true };