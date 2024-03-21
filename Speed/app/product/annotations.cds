using from '../../srv/SpeedService';
using from '../../db/SpeedSchema';

annotate SpeedService.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : id,
            Label : 'Product ID',
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Product Name',
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'Description',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : 'Rating',
        },
    ]
);
annotate SpeedService.Product with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Product Detail',
            ID : 'ProductDetail',
            Target : '@UI.FieldGroup#ProductDetail',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Product Price',
            ID : 'ProductPrice',
            Target : '@UI.FieldGroup#ProductPrice',
        },
    ],
    UI.FieldGroup #ProductDetail : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : id,
                Label : 'id',
            },{
                $Type : 'UI.DataField',
                Value : code,
                Label : 'code',
            },{
                $Type : 'UI.DataField',
                Value : name,
                Label : 'name',
            },{
                $Type : 'UI.DataField',
                Value : description,
                Label : 'description',
            },
            {
                $Type : 'UI.DataField',
                Value : price.price,
                Label : 'price',
            },],
    }
);
annotate SpeedService.Product with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
        ImageUrl : productImage,
    }
);
annotate SpeedService.Product with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Progress,
        TargetValue : 5,
    }
);
annotate SpeedService.Product with @(
    UI.SelectionFields : [
        name,
    ]
);
annotate SpeedService.Product with {
    name @Common.Label : 'name'
};
annotate SpeedService.Product with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Product',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
            Label : 'Product Name',
        },
        Common.ValueListWithFixedValues : true
)};
annotate SpeedService.Product with @(
    UI.FieldGroup #ProductPrice : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : price.id,
                Label : 'id',
            },{
                $Type : 'UI.DataField',
                Value : price.price,
                Label : 'price',
            },{
                $Type : 'UI.DataField',
                Value : price.unit,
                Label : 'unit',
            },{
                $Type : 'UI.DataField',
                Value : price.currency_code,
            },],
    }
);
annotate SpeedService.Product with @(
    UI.DataPoint #rating1 : {
        $Type : 'UI.DataPointType',
        Value : rating,
        Title : 'rating',
        TargetValue : 5,
        Visualization : #Rating,
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'rating',
            Target : '@UI.DataPoint#rating1',
        },
    ]
);
//using SpeedService as service from 'SAP Business Application Studio/projects/Speed/srv/SpeedService';