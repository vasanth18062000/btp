using {com.ladera.carshowroomPG as my} from '../db/schema';

service CarShowroomService {

    entity cars @(restrict: [
        {
            grant: ['READ'],
            to   : ['CarViewer']
        },
        {
            grant: ['*'],
            to   : ['CarAdmin']
        }
    ])                     as projection on my.Car;

    entity TyresDeatail    as projection on my.Tyres;
    entity SeatsDetails    as projection on my.SeatsDetails;
    entity TubeDetails     as projection on my.TubeDetails;
    entity EngineDetails   as projection on my.EngineDetails;
    entity Passenger       as projection on my.Passenger;
    entity ModelVarient    as projection on my.ModelVarient;
    entity Colour          as projection on my.Colour;
    entity CurrencyDetails as projection on my.CurrencyDetails;
    
    annotate my.Car with @odata.draft.enabled;

}
