using {com.ladera.businesspartner as bp} from '../db/schema';
namespace incidents.serve;


service IncidentsService{
    entity Incidents as projection on bp.Incidents;
    entity ServiceWorkers as projection on bp.ServiceWorkers;
    entity Appointment as projection on bp.Appointments;
}