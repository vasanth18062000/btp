using {managed} from '@sap/cds/common';
using { com.hms.patient as patient} from '../db/PatientSchema';

namespace com.hms.records;

entity Records :managed{
    Key recordId:String;
    admittedDate:DateTime;
    dischargedDate:DateTime;
    treatment:String;
    patient:Association to one patient.Patient;
}
