using {com.ladera.businesspartner as bp} from '../db/schema';
using {com.ladera.featuresentitybind as custom} from './external/businesspartnerserviceweb';
namespace incidents.serve;


service IncidentsService{
    entity Incidents as projection on bp.Incidents;
    entity ServiceWorkers as projection on bp.ServiceWorkers;
    entity Appointment as projection on bp.Appointments;
    entity BusinessPartner as projection on custom.BusinessPartners;
    entity BusinessPartnerAccount as projection on custom.BPBank;
    entity AcademicTitle as projection on custom.BusinessPartners

}
 annotate IncidentsService with @(requires: 'support'); 
//annotate IncidentsService.BusinessPartner with @odata.draft.enabled;
annotate custom.BusinessPartners with @cds.persistence: {table,skip:false};
annotate custom.BPBank with @cds.persistence: {table,skip:false};

