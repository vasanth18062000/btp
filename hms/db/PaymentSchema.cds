using {managed} from '@sap/cds/common';
using{com.hms.patient} from '../db/PatientSchema';
namespace com.hms.payment;

entity Payment {
    key paymentId:String;
    totalBill:Double;
    paymentDateTime:DateTime;
    paymentMode:String @assert.range enum{
        CASH;
        CARD;
        UPI;
    };
    paymentStatus:Integer;
    patient:Association to one patient.Patient;
}

