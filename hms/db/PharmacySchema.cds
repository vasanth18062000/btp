using {managed} from '@sap/cds/common';
using {com.hms.patient as patient} from '../db/PatientSchema';
namespace com.hms.pharmacy;

entity Pharamacy {
    key pharmacyId:String;
    prescription:String;
    price:Double;
    patient:Association to one patient.Patient;
}



