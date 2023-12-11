// service AdminService {
//     entity Products {
//         key ID : Integer;
//         title  : String(111);
//         descr  : String(1111);
//     }
// }

// using { sap.capire.products as db } from '../db/schema';

// service AdminService {
//     entity Products   as projection on db.Products;
//     entity Categories as projection on db.Categories;
// }

using {com.ladera.carshowroom as my} from '../db/schema';

service CarShowroomService {

    entity BMW             as projection on my.Car;
    entity Tyres           as projection on my.Tyres;
    entity SeatsDetails    as projection on my.SeatsDetails;
    entity TubeDetails     as projection on my.TubeDetails;
    entity EngineDetails   as projection on my.EngineDetails;
    entity Passenger       as projection on my.Passenger;
    entity ModelVarient    as projection on my.ModelVarient;
    entity Colour          as projection on my.Colour;
    entity CurrencyDetails as projection on my.CurrencyDetails;
}
