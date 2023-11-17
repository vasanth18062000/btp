using {managed} from '@sap/cds/common';
using {com.hms.doctor} from '../db/DoctorSchema';
namespace com.hms.specialist;

entity Specialist {
    Key specialistId:String;
    SpecialistIn:String;
    experience:String;
    doctor:Association to doctor.Doctor;
}


