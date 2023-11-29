using { sap.capire.products as db } from '../db/schema';

service AdminService {
    // entity Products   as projection on db.Products;
    // entity Categories as projection on db.Categories;
     entity Car as projection on db.Car;
    entity ModelVarient as projection on db.ModelVarient;
    entity Colours as projection on db.Colours;
    entity Prices as projection on db.Prices;
    entity Seat as projection on db.Seat;
    entity Tyre as projection on db.Tyre;
    entity Engine as projection on db.Engine;
    entity Passanger as projection on db.Passanger;
    entity TyreType as projection on db.TyreType;
}
