using SpeedService as service from '../../srv/service';
using from '../../db/Schema';

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
            $Type : 'UI.DataField',
            Label : 'Product Image',
            Value : productImage,
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
                Label : 'Product Image',
                Value : productImage,
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
                Value : price.productId.price.price,
                Label : 'Price',
            },
            {
                $Type : 'UI.DataField',
                Value : price.unit,
                Label : 'Unit',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Price',
            ID : 'Price',
            Target : 'texts/@UI.LineItem#Price',
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
        TypeName : '',
        TypeNamePlural : '',
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
