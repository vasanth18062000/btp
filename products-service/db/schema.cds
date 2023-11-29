namespace sap.capire.products;

// using { Currency, cuid, managed, sap.common.CodeList } from '@sap/cds/common';

// entity Products : cuid, managed {
//     title    : localized String(111);
//     descr    : localized String(1111);
//     stock    : Integer;
//     price    : Decimal(9,2);
//     currency : Currency;
//     category : Association to Categories;
// }

// entity Categories : CodeList {
//     key ID   : Integer;
//     parent   : Association to Categories;
//     children : Composition of many Categories on children.parent = $self;
// }

entity Car{
    key Id: Integer;
    carName: String;
    manufactureDate: String;
    noOfPassanger: Association to many Passanger on noOfPassanger.carPassanger=$self;
    // type: String;
    modelVarient:  Composition of  many ModelVarient on modelVarient.models=$self;
}
entity ModelVarient{
    key Id: Integer;
    modelName: String;
    colour: Composition of Colours on colour.colour=$self;
    price: Composition of  Prices on price.price=$self;
    engineType: Composition of  many Engine on engineType.engines=$self;
    noOfTyre: Composition of  many Tyre on noOfTyre.carTyre=$self;
    models: Association to  Car;
    seatCapacity: Association to many Seat on seatCapacity.carSeat=$self;
}

entity Colours{
    key Id: Integer;
    colours:String;
    colour:Association to ModelVarient;
    cars : Association to Car;
}

entity Prices{
    key Id: Integer;
    price: Association to ModelVarient;
    priceRange:String;    
}

entity Engine{
    key Id:Integer;
    modelNumber: String;
    engineType:String;
    engines: Association to ModelVarient;
    // oil_capacity: String;
}

entity Seat{
    key Id:Integer;
    capacity: String;
    seatBrand: String;
    carSeat: Association to ModelVarient;
}

entity Tyre{
    key Id: Integer;
    tyreBrand: String;
    carTyre: Association to ModelVarient;
    type: Composition of TyreType;
}

entity TyreType{
    key Id: Integer;
    tyreType: String;
}

entity Passanger{
    key Id:Integer;
    noOfPpl: String;
    gender: String;
    carPassanger:Association to Car;
}