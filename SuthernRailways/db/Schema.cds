using {managed,cuid} from '@sap/cds/common';
namespace Railways.db;
entity Passengerinfo : cuid,managed {
    FirstName:String;
    LastName:String;
    PhoneNo:String;
    Address:Association to Address;
    Email:String;
    IRCTCID:String; 
}
entity Address:cuid{
AddressLine1:String;
AddressLine2:String;
AdressLine3:String;
AddressLine4:String;
State:String;
pinCode:String;
}
entity TravelInfo : cuid {
    StartigPoit:String;
    EndingPoint:String;
}
    entity Priceinfo: cuid{
   price : String enum{
    ChenaitoThambarm ='30';
    KelambakamToChengalpattu='40';
    GundiToVelacheri='70';
    PeramburToMambalam='60'
   }  
    }
    
entity Ticket : cuid {
    TicketNo:String;
    Passengerinfo:Association to Passengerinfo;
   
    TicketPrice:Association to Priceinfo;
    }
    
