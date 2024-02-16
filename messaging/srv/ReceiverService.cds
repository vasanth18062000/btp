
@protocol:'rest'
@path:'externalparty'
service SecondParty {
    event Communication {
        key ID:UUID;
        name:String;
        details:String;
    }
 
    
    entity Clothes {
        key ID:Integer;
        genre :String;
        model: String;
        price :Double; 
    }
}