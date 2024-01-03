using SpeedService as service from '../../srv/service';
using from '../../db/Schema';
using from '@sap/cds/common';
using from '@sap/cds/common';
using from '@sap/cds/common';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product ID',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : name,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@Communication.Contact#contact',
            Label : 'Product Image',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
        },
    ]
);
annotate service.Product with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Product ID',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Product Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Average Rating',
                Value : rating,
            },
            {
                $Type : 'UI.DataField',
                Value : unit,
                Label : 'Availability',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.ConnectedFields#connected3',
                Label : 'Price',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Product with @(
    UI.SelectionFields : [
        name,
        rating,
        id,
    ]
);
annotate service.Product with {
    name @Common.Label : 'Product Name'
};
annotate service.Product with {
    rating @Common.Label : 'Average Rating'
};
annotate service.Product with {
    id @Common.Label : 'Product ID'
};
annotate service.Product with @(
    UI.HeaderInfo : {
        ImageUrl : productImage,
        TypeName : 'Product Information',
        TypeNamePlural : 'Info',
        Initials : name,
    }
);
annotate service.Product.texts with @(
    UI.LineItem #Price : [
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },{
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : locale,
        },{
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },]
);
annotate service.Product with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : id,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.Product with {
    productImage @UI.MultiLineText : true
};
annotate service.Product with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : productImage,
        photo : productImage,
        org : name,
    }
);
annotate service.Product with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Progress,
        TargetValue : 5,
    }
);
annotate service.Product with @(
    UI.DataPoint #id : {
        Value : id,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Product with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : productImage,
    }
);
annotate service.Product with @(
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{productImage}Image 2{rating}',
        Data : {
            $Type : 'Core.Dictionary',
            productImage : {
                $Type : 'UI.DataField',
                Value : productImage,
            },
            rating : {
                $Type : 'UI.DataField',
                Value : rating,
            },
        },
    }
);
annotate service.Product with @(
    UI.ConnectedFields #connected1 : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{rating}kjnjnkjnjk{productImage}',
        Data : {
            $Type : 'Core.Dictionary',
            rating : {
                $Type : 'UI.DataField',
                Value : rating,
            },
            productImage : {
                $Type : 'UI.DataField',
                Value : productImage,
            },
        },
    }
);
annotate service.Product with @(
    UI.DataPoint #rating1 : {
        $Type : 'UI.DataPointType',
        Value : rating,
        Title : '',
        TargetValue : 5,
        Visualization : #Rating,
        ![@Common.QuickInfo] : 'Rating',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'name',
            Target : '@UI.DataPoint#name',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'rating',
            Target : '@UI.DataPoint#rating1',
        },
    ]
);
annotate service.Product with @(
    UI.DataPoint #productImage : {
        $Type : 'UI.DataPointType',
        Value : productImage,
        Title : 'productImage',
    }
);
annotate service.Product with @(
    UI.DataPoint #name : {
        $Type : 'UI.DataPointType',
        Value : name,
        Title : '',
        ![@Common.QuickInfo] : code,
    }
);
annotate service.Product with @(
    UI.ConnectedFields #connected2 : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{currency_symbol} {currency_name}',
        Data : {
            $Type : 'Core.Dictionary',
            currency_symbol : {
                $Type : 'UI.DataField',
                Value : currency.symbol,
            },
            currency_name : {
                $Type : 'UI.DataField',
                Value : currency.name,
            },
        },
    }
);

annotate service.Currencies with {
    symbol @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Currencies',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : symbol,
                    ValueListProperty : 'symbol',
                },
            ],
            Label : 'Currency',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Product with @(
    UI.ConnectedFields #connected3 : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{currency_symbol} {price}',
        Data : {
            $Type : 'Core.Dictionary',
            currency_symbol : {
                $Type : 'UI.DataField',
                Value : currency.symbol,
            },
            price : {
                $Type : 'UI.DataField',
                Value : price,
            },
        },
    }
);
annotate service.Product with @(
    Communication.Contact #contact2 : {
        $Type : 'Communication.ContactType',
        fn : productImage,
    }
);
annotate service.Product with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'SpeedService.EntityContainer/addReview',
            Label : 'addReview',
        },
    ]
);
