using Product as service from '../../srv/Product';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>S.  No}',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Product Code}',
            Value : code,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Product Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating1',
            Label : '{i18n>Rating}',
        },
    ]
);
annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'validFrom',
                Value : validFrom,
            },
            {
                $Type : 'UI.DataField',
                Label : 'validTo',
                Value : validTo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'id',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'code',
                Value : code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productImage',
                Value : productImage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rating',
                Value : rating,
            },
            {
                $Type : 'UI.DataField',
                Label : 'manufactureId',
                Value : manufactureId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sellerId',
                Value : sellerId,
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
annotate service.Products with @(
    UI.SelectionFields : [
        code,
        name,
    ]
);
annotate service.Products with {
    code @Common.Label : '{i18n>Product Code}'
};
annotate service.Products with {
    name @Common.Label : '{i18n>Product Name}'
};
annotate service.Products with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Products with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : productImage,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.Products with @(
    UI.DataPoint #rating1 : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
