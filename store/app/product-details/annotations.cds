using MyService as service from '../../srv/catalog-service';

annotate service.ProductDetails with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ProductID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Details',
            Value : Details,
        },
    ]
);
annotate service.ProductDetails with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ProductID',
                Value : ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Details',
                Value : Details,
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
