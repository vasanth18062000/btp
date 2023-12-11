using CarShowroomService as service from '../../srv/carshowroom-service';

annotate service.cars with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'carName',
            Value : carName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'carModel',
            Value : carModel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'engineType',
            Value : engineType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'modelYear',
            Value : modelYear,
        },
    ]
);
annotate service.cars with {
    seatsDetails @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SeatsDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : seatsDetails_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'noOfSeats',
            },
        ],
    }
};
annotate service.cars with {
    tubeDetails @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'TubeDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : tubeDetails_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'tubeBrand',
            },
        ],
    }
};
annotate service.cars with {
    engineDetails @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'EngineDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : engineDetails_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'engineCC',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'OilCapacity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'car_ID',
            },
        ],
    }
};
annotate service.cars with {
    currencyDetails @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'CurrencyDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : currencyDetails_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'currencyType',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'price',
            },
        ],
    }
};
annotate service.cars with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'carName',
                Value : carName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'carModel',
                Value : carModel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'engineType',
                Value : engineType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'modelYear',
                Value : modelYear,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Car Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Model Varient',
            ID : 'ModelVarient',
            Target : '@UI.FieldGroup#ModelVarient',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>ColourVarient}',
            ID : 'colour',
            Target : '@UI.FieldGroup#colour',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>EngineDetails}',
            ID : 'i18nEngineDetails',
            Target : '@UI.FieldGroup#i18nEngineDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Seat Deatils',
            ID : 'SeatDeatils',
            Target : '@UI.FieldGroup#SeatDeatils',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Passenger Details',
            ID : 'PassengerDetails',
            Target : 'passengerDetails/@UI.LineItem#PassengerDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Tyres',
            ID : 'Tyres',
            Target : 'tyres/@UI.LineItem#Tyres',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Currency Details',
            ID : 'CurrencyDetails',
            Target : '@UI.FieldGroup#CurrencyDetails',
        },
    ]
);
annotate service.ModelVarient with @(
    UI.Facets : [],
    UI.FieldGroup #aaaaaa : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.cars with @(
    UI.FieldGroup #i18nEngineDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : engineDetails.engineCC,
                Label : 'engineCC',
            },{
                $Type : 'UI.DataField',
                Value : engineDetails.OilCapacity,
                Label : 'OilCapacity',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #CurrencyDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : currencyDetails.currencyType,
                Label : 'currencyType',
            },{
                $Type : 'UI.DataField',
                Value : currencyDetails.price,
                Label : 'price',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #ModelVarient : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : modelVarient.carModel,
                Label : 'carModel',
            },
            {
                $Type : 'UI.DataField',
                Value : modelVarient.carVarient,
                Label : 'carVarient',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #SeatDeatils : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : seatsDetails.noOfSeats,
                Label : 'noOfSeats',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #PassengerDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : passengerDetails.gender,
                Label : 'gender',
            },{
                $Type : 'UI.DataField',
                Value : passengerDetails.passengerList,
                Label : 'passengerList',
            },],
    }
);
annotate service.TyresDeatail with @(
    UI.LineItem #TyreDetails : [
        {
            $Type : 'UI.DataField',
            Value : car.tyres.tyreBrand,
            Label : 'tyreBrand',
        },{
            $Type : 'UI.DataField',
            Value : car.tyres.tyreType,
            Label : 'tyreType',
        },]
);
annotate service.TyresDeatail with @(
    UI.LineItem #tyre : [
        {
            $Type : 'UI.DataField',
            Value : car.tyres.tyreType,
            Label : 'tyreType',
        },{
            $Type : 'UI.DataField',
            Value : car.tyres.tyreBrand,
            Label : 'tyreBrand',
        },{
            $Type : 'UI.DataField',
            Value : car.tyres.ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : car.tyres.car_ID,
            Label : 'car_ID',
        },]
);
annotate service.cars with @(
    UI.FieldGroup #TyreDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tyres.tyreBrand,
                Label : 'tyreBrand',
            },{
                $Type : 'UI.DataField',
                Value : tyres.tyreType,
                Label : 'tyreType',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #ColourVarient : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : colour.carColourVarient,
                Label : 'carColourVarient',
            },
            {
                $Type : 'UI.DataField',
                Value : tyres.car.colour.carColourVarient,
                Label : 'carColourVarient',
            },
            {
                $Type : 'UI.DataField',
                Value : tyres.car.colour.ID,
                Label : 'ID',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #Colour : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tyres.car.colour.carColourVarient,
                Label : 'carColourVarient',
            },{
                $Type : 'UI.DataField',
                Value : tyres.car.colour.ID,
                Label : 'ID',
            },],
    }
);
annotate service.cars with @(
    UI.FieldGroup #colour : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : colour.carColourVarient,
                Label : 'carColourVarient',
            },],
    }
);
annotate service.cars with @(
    UI.HeaderInfo : {
        TypeName : 'AUDI',
        TypeNamePlural : '',
        TypeImageUrl : '',
        Title : {
            $Type : 'UI.DataField',
            Value : carName,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : '{i18n>Carshowroom}',
        },
        ImageUrl : carImage,
    }
);

annotate service.cars with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.TyresDeatail with @(
    UI.LineItem #TyreDetails1 : [
    ]
);
annotate service.cars with @(
    UI.FieldGroup #TyreDetails1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tyres.tyreBrand,
                Label : 'tyreBrand',
            },{
                $Type : 'UI.DataField',
                Value : tyres.tyreType,
                Label : 'tyreType',
            },],
    }
);
annotate service.TyresDeatail with @(
    UI.LineItem #TyredEtails : [
        {
            $Type : 'UI.DataField',
            Value : tyreBrand,
            Label : 'tyreBrand',
        },{
            $Type : 'UI.DataField',
            Value : tyreType,
            Label : 'tyreType',
        },
        {
            $Type : 'UI.DataFieldForIntentBasedNavigation',
            SemanticObject : 'Tube',
            Action : 'tube',
            Label : '{i18n>TubeDetails}',
        },
        {
            $Type : 'UI.DataField',
            Value : tubeDetails.tubeBrand,
            Label : 'tubeBrand',
        },]
);
annotate service.ModelVarient with @(
    UI.FieldGroup #TubeDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.cars with @(
    UI.FieldGroup #TyreDetails2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tyres.tyreBrand,
                Label : 'tyreBrand',
            },{
                $Type : 'UI.DataField',
                Value : tyres.tyreType,
                Label : 'tyreType',
            },{
                $Type : 'UI.DataField',
                Value : tyres.tubeDetails.tubeBrand,
                Label : 'tubeBrand',
            },],
    }
);
annotate service.TyresDeatail with @(
    UI.LineItem #TyreAndTubeDetails : [
        {
            $Type : 'UI.DataField',
            Value : tyreBrand,
            Label : 'tyreBrand',
        },
        {
            $Type : 'UI.DataField',
            Value : tyreType,
            Label : 'tyreType',
        },]
);
annotate service.Passenger with @(
    UI.LineItem #PassengerDetails : [
        {
            $Type : 'UI.DataField',
            Value : gender,
            Label : 'gender',
        },{
            $Type : 'UI.DataField',
            Value : passengerList,
            Label : 'passengerList',
        },]
);
annotate service.ModelVarient with @(
    UI.FieldGroup #tyre : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : car.tyres.tyreType,
                Label : 'tyreType',
            },],
    }
);
annotate service.ModelVarient with @(
    UI.FieldGroup #tube : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : car.tyres.tubeDetails.tubeBrand,
                Label : 'tubeBrand',
            },],
    }
);
annotate service.TyresDeatail with @(
    UI.LineItem #Tyres : [
        {
            $Type : 'UI.DataField',
            Value : tyreBrand,
            Label : 'tyreBrand',
        },{
            $Type : 'UI.DataField',
            Value : tyreType,
            Label : 'tyreType',
        },]
);
annotate service.ModelVarient with @(
    UI.FieldGroup #tube1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : car.tyres.tubeDetails.tubeBrand,
                Label : 'tubeBrand',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'car/@Communication.Contact#contact',
                Label : 'Contact Name',
            },],
    }
);
annotate service.cars with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : carName,
    }
);
annotate service.cars with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.TyresDeatail with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'TubeDetails',
            ID : 'TubeDetails',
            Target : '@UI.FieldGroup#TubeDetails',
        },
    ],
    UI.FieldGroup #TubeDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tubeDetails.tubeBrand,
                Label : 'tubeBrand',
            },],
    }
);
