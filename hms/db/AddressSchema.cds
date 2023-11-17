using{managed} from '@sap/cds/common';
using{com.hms.patient as patient} from '../db/PatientSchema';
namespace com.hms.address;

entity Address {
    Key addressId:String;
    doorNo:String;
    streetName:String;
    city:String;
    state:String;
    pinCode:String @mandatory;
    patient:Association to patient.Patient;
}
