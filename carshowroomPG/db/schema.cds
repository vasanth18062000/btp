namespace com.ladera.carshowroomPG;

entity Car {

  key ID               : Integer;
      tyres            : Composition of many Tyres
                           on tyres.car = $self;
      passengerDetails : Association to many Passenger
                           on passengerDetails.car = $self;
      colour           : Association to many Colour
                           on colour.car = $self;
      modelVarient     : Association to many ModelVarient
                           on modelVarient.car = $self;
      carName          : String;
      carModel         : String;
      engineType       : String;
      modelYear        : String;
      seatsDetails     : Composition of SeatsDetails;
      engineDetails    : Composition of EngineDetails;
      currencyDetails  : Association to CurrencyDetails;
      carImage         : String;

}

entity Tyres {

  key ID          : Integer;
      tyreBrand   : String;
      tyreType    : String;
      tubeDetails : Association to TubeDetails;
      car         : Composition of Car;


}

entity SeatsDetails {

  key ID        : Integer;
      noOfSeats : String;

}

entity Passenger {

  key ID            : Integer;
      gender        : String;
      passengerList : String;
      car           : Association to Car;
}

entity TubeDetails {

  key ID        : Integer;
      tubeBrand : String;
      tyre      : Association to Tyres;

}

entity EngineDetails {

  key ID          : Integer;
      engineCC    : String;
      OilCapacity : String;
      car         : Composition of Car;

}


entity ModelVarient {

  key ID         : Integer;
      carModel   : String;
      carVarient : String;
      car        : Association to Car;

}


entity Colour {

  key ID               : Integer;
      carColourVarient : String;
      car              : Association to Car;

}

entity CurrencyDetails {

  key ID           : Integer;
      currencyType : String;
      price        : String;

}
