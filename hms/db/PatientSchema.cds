using{managed} from '@sap/cds/common';
using{com.hms.address} from '../db/AddressSchema';
using{com.hms.records as records} from '../db/RecordsSchema';
using {com.hms.doctor as doctor} from '../db/DoctorSchema';
using {com.hms.pharmacy as pharmacy} from '../db/PharmacySchema';
using {com.hms.payment as payment} from '../db/PaymentSchema';

namespace com.hms.patient;

entity Patient:managed{
    Key patientId:String;
    patientFirstName:String @mandatory;
    patientLastName:String @mandatory;
    dateOfBirth:Date;
    age:Integer;
    mobileNumber:String;
    email:String;
    gender:String @assert.range enum{
        MALE;
        FEMALE;
        OTHERS;
    };
    aadharNumber:String @assert.unique;
    Address:Association to many address.Address;
    doctor:Association to doctor.Doctor;
    records:Association to records.Records;
    pharmacy:Association to one pharmacy.Pharamacy;
    payment:Association to payment.Payment;
}


