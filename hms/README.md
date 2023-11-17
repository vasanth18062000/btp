# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


1.create Project by command cds init hms in terminal
2.open folder,type home/user/projects/hms
3.In terminal type cds watch 
 oms $ cds watch
 
cds serve all --with-mocks --in-memory? 
live reload enabled for browsers 

        ___________________________
 
[cds] - loaded model from 1 file(s):

  db/schema.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { database: ':memory:' }
/> successfully deployed to in-memory database. 


[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 10/31/2023, 10:48:05 AM, version: 7.3.1, in: 739.499ms
[cds] - [ terminate with ^C ]


    No service definitions found in loaded models.
    Waiting for some to arrive...

1.create project by command cds init hms
2.open folder,type home/user/projects/hms\
3.In db create schema,

entity Patient:managed{
    Key ID:String;
    patientFirstName:String;
    patientLastName:String;
    mobileNumber:String;
    email:String;
    gender:String @assert.range enum{
        Male;
        Female;
        Others;
    };
    aadharNumber:String;
    Address:Association to many address.Address;
    
}

entity Doctor :managed{
    Key ID:String;
    doctorFirstName:String @mandatory;
    doctorLastName:String @mandatory;
    mail:String;
    mobileNumber:String;
    gender:String @assert.range enum{
        Male;
        Female;
        Others;
    };
    address:Association to many address.Address;

}

entity Address {
    doorNo:String;
    city:String;
    state:String;
    pinCode:String;
    patient:Association  to patient.Patient;
}
entity Records :managed{
    Key recordId:String;
    admittedDate:DateTime;
    dischargedDate:DateTime;
    treatment:String;
}

tity Payment {
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

entity Pharamacy {
    key pharmacyId:String;
    prescription:String;
    price:Double;
    patient:Association to one patient.Patient;
}

entity Specialist {
    Key specialistId:String;
    SpecialistIn:String;
    experience:String;
    doctor:Association to doctor.Doctor;
}
4.In terminal type cds watch 
 user: hms $ cds watch

 5.create service class,
 using {com.hms.patient as patient} from '../db/PatientSchema';
service PatientService {

    entity Patient as projection on patient.Patient;

}
using {com.hms.address as address} from '../db/AddressSchema';
service AddressService {

    entity Address as projection on address.Address;

}using {com.hms.doctor as doctor} from '../db/DoctorSchema';
service DoctorService {

    entity Doctor as projection on doctor.Doctor;

}
using {com.hms.payment as payment} from '../db/PaymentSchema';
service PaymentService {

    entity Payment as projection on payment.Payment;

}using {com.hms.pharmacy as pharmacy} from '../db/PharmacySchema';
service PharmacyService {

    entity Pharmacy as projection on pharmacy.Pharamacy;

}
using {com.hms.records as records} from '../db/RecordsSchema';
service RecordsService {

    entity Record as projection on records.Records;

}
using {com.hms.specialist as specialist} from '../db/SpecialistSchema';
service SpecialistService {

    entity Specialist as projection on specialist.Specialist;

}

6.Run command cds add data in terminal
7.New folder created under db folder as data
8.In data folder csv file will be created and add data into it.