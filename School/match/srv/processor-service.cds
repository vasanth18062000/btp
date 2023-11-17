using { com.ladera.match as my} from '../db/schema';
service ProcessorService {

    entity Team as projection on my.Team;
    entity Coach as projection on my.Coach;
    entity Players as projection on my.Players;
    entity Match as projection on my.Match;
    entity Location as projection on my.Location;
    entity Gender as projection on my.Gender;

 annotate ProcessorService.Match with @odata.draft.enabled;

}