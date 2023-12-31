using Customer as service from '../../srv/CustomerService';

annotate service.Products with @(
    UI.LineItem : [
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
    ]
);
annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'https://getwallpapers.com/wallpaper/full/8/2/6/625371.jpg',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
        ImageUrl : productImage,
    }
);
annotate service.Products with @(
    UI.DataPoint #rating : {
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
            Target : '@UI.DataPoint#rating',
        },
    ]
);
