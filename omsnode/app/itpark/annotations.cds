using DatabaseService as service from '../../srv/database-service';

annotate service.ItPark with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'city',
            Value : city,
        },
        {
            $Type : 'UI.DataField',
            Label : 'locality',
            Value : locality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'pincode',
            Value : pincode,
        },
    ]
);
annotate service.ItPark with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'locality',
                Value : locality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pincode',
                Value : pincode,
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
annotate service.ItPark with @(
    UI.SelectionFields : [
        city,
        name,
        locality,
        client.name,
        client.location,
    ]
);
annotate service.ItPark with {
    city @Common.Label : 'city'
};
annotate service.ItPark with {
    locality @Common.Label : 'locality'
};
