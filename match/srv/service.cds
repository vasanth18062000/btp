using{com.match.db as my} from '../db/schema';

service MyService {

    entity Match as projection on my.Match{
        *,Match.team,Match.team.coach
    };
    entity Team as projection on my.Team;
    entity Players as projection on my.Players;
    entity Gender as projection on my.Gender;
    entity Location as projection on my.Location;
    entity Coach as projection on my.Coach;
}annotate MyService.Match with @odata.draft.enabled ;

