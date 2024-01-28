using { Railways.db as Railways } from '../db/Schema';
service Railway {

    entity Passengerinfo as projection on Railways.Passengerinfo;
    entity Address as projection on Railways.Address;
    entity Route as projection on Railways.TravelInfo;
    entity RouteInfo as projection on Railways.Priceinfo;
    entity Ticket as projection on Railways.Ticket;





}