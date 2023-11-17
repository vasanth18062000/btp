using { sap.common.CodeList } from '@sap/cds/common';
namespace com.ladera.match;

entity Team{
    key teamID : String;
    teamName : String;
    logo : String;
    homeground : String;
    noOfPlayers : String;
    coach : Association to Coach;
    players:Association to many Players on players.team=$self;
}



entity Coach{
    key coachID : String;
    coachName : String;
    age : Integer;
    experience : Integer;
    gender : Association to Gender;
    team : Association to Team;
}

entity Players{
    key playerID : String;
    playerName : String;
    position : String;
    gender : Association to Gender;
    team : Association to Team;
}

entity Match{
    key matchID : String;
    matchDate : Date;
    groundName : String;
    location : Association to Location;
    team1 : Association to Team;
    team2:Association to Team;
}

entity Location{
    key stadium : String enum{
        CHEPAK = 'CH';
        MUMBAI = 'MB';
        BANGLORE = 'BGL';
    }
}

entity Gender{
    key gender : String enum{
        MALE = 'M';
        FEMALE = 'F';
        OTHERS = 'O';
    }
}