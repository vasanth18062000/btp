using {sap.common.CodeList} from '@sap/cds/common';
namespace com.match.db;

entity Team{
    key teamID:String;
    teamName:String;
    homeground:String;
    game:String;
    noOfPlayers:Integer;
    logo:String;
    coach:Association to Coach;
    players:Association to many Players on players.team=$self;
}

entity Coach{
    Key coachID:String;
    coachName:String;
    age:Integer;
    experience:Integer;
    gender:Association to Gender;
    team:Association to Team;  
}

entity Players{

    Key playerID:String;
    playerName:String;
    position:String;
    gender:Association to Gender;
    team:Association to Team;
}

entity Match{
   key matchID:String;
    matchDate:Date;
    groundName:String;
    location:Association to Location;
    team:Association to Team;
}

entity Location:CodeList{
    Key stadium:String enum{
        CHENNAI='CH';
        MUMBAI='MB';
        BANGLORE='BLRE';
    }
}
entity Gender:CodeList{
    Key gender:String enum{
        MALE='M';
        FEMALE='F';
        OTHERS='O';
    }
}
