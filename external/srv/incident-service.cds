using { com.ladera.schema as bpa } from '../db/schema';

namespace com.ser;



service MyService {

  entity Incident as projection on bpa.Incidents;
  entity Appointment as projection on bpa.Appointments;
  entity ServiceWorker as projection on bpa.ServiceWorkers;

}
annotate MyService with @(requires: 'support');
