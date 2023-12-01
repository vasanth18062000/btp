using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.AddressFax with @(
    UI.LineItem : [
        
        {
            $Type : 'UI.DataField',
            Label : 'Person',
            Value : Person,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AddressID',
            Value : AddressID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsDefaultFaxNumber',
            Value : IsDefaultFaxNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FaxCountry',
            Value : FaxCountry,
        },
    ]
);
annotate service.AddressFax with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'AddressID',
                Value : AddressID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Person',
                Value : Person,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrdinalNumber',
                Value : OrdinalNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsDefaultFaxNumber',
                Value : IsDefaultFaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FaxCountry',
                Value : FaxCountry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FaxNumber',
                Value : FaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FaxNumberExtension',
                Value : FaxNumberExtension,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalFaxNumber',
                Value : InternationalFaxNumber,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Fax Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.AddressFax with @(
    UI.SelectionFields : [
        AddressID,
        FaxNumber,
        FaxCountry,
    ]
);
annotate service.AddressFax with {
    AddressID @Common.Label : 'AddressID'
};
annotate service.AddressFax with {
    FaxNumber @Common.Label : 'FaxNumber'
};
annotate service.AddressFax with {
    FaxCountry @Common.Label : 'FaxCountry'
};
annotate service.AddressFax with {
    AddressID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressFax',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : AddressID,
                    ValueListProperty : 'AddressID',
                },
            ],
            Label : 'Address ID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AddressFax with @(
    UI.SelectionPresentationVariant #tableView : {
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
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
        },{
            $Type : 'UI.DataField',
            Value : FaxNumber,
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultFaxNumber,
            Label : 'IsDefaultFaxNumber',
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
