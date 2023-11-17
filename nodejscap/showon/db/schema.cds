using {managed} from '@sap/cds/common';

entity UserDetails:managed{
    key userId:Integer;
    userName:String;
    email:String;
    password:String;
    mobile:String;
    payment:Association to payment;
}

entity payment:managed{
    key id:Integer;
    paymentType:String;
    transactionId:Integer;
    paymentVia:String;
    totalAmount:String;
    availedSeat:Integer;
    
    UserDetails:Association to UserDetails;
}

entity Theatre:managed{
    key id:Integer;
    name:String;
    location:String;
    seatAvailability:Integer;
    screenCount:Integer;
    perSeat:Integer;
    movies:Composition of many {key code:Association to Movies;} //many to many (bi)
}

entity Movies:managed{
    key id:Integer;
    name:String;
    screenTiming:String;
    ratings:String;
    language:String;
    castCrew:String;
    genre:String;
    storyLine:String;
    theatres:Composition of many Theatre.movies on theatres.code=$self;//many to many
}

entity MovieRatings:managed{
    key id:Integer;
    imdbRating:String;
    firstHalf:String;
    secondhalf:String;
    outOfRating:String;
}

entity CastCrew:managed{
    key id;Integer;
    stars:String;
    director:String;
    producer:String;
    musicDirector:String;
    dop:String;
    artDirector:String;
}



