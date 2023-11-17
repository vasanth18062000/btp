using {managed} from '@sap/cds/common';
using {com.hms.address as address} from '../db/AddressSchema';
using {com.hms.patient as patient} from '../db/PatientSchema';
using {com.hms.specialist as specialist} from '../db/SpecialistSchema';
namespace com.hms.doctor;

entity Doctor :managed{
    Key doctorId:String;
    doctorFirstName:String @mandatory;
    doctorLastName:String @mandatory;
    dateOfBirth:Date;
    age:String;
    mail:String;
    mobileNumber:String;
    gender:String @assert.range enum{
        MALE;
        FEMALE;
        OTHERS;
    };
    title:Association to one title;
    doctorImage:String;
    specialist:Association to specialist.Specialist;
    address:Association to many address.Address;
    patient:Association to many patient.Patient;
}
entity title{
    Key Id:Integer;
    name:String;
}
