using {cuid,managed,temporal} from '@sap/cds/common';
namespace onepiece.db;

entity Characters : cuid,managed, temporal{
    key characterId:UUID;
    origin:String(10);
    skill :String (10);
    position : String (10);
    age : Integer;
}

entity Ship : cuid,managed{
    key shipId : UUID;
    shipName : String (10);
    sailors : Integer;
    type : String (20);
    buildMaterial : String (20);
}

entity DevilFruit : cuid , managed{
    key devilFruitId : UUID;
    devilFruitName : String (20);
    type : String (21);

}

entity Arc : cuid,managed {
    key arcId : UUID;
    arcName : String (20);
    villainName:String (20);
    islandName : String (20);
}

