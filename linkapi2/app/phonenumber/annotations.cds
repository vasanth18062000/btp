using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.AddressPhoneNumber with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'OrdinalNumber',
            Value : OrdinalNumber,
        },
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
            Label : 'DestinationLocationCountry',
            Value : DestinationLocationCountry,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsDefaultPhoneNumber',
            Value : IsDefaultPhoneNumber,
        },
    ]
);
annotate service.AddressPhoneNumber with @(
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
                Label : 'DestinationLocationCountry',
                Value : DestinationLocationCountry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsDefaultPhoneNumber',
                Value : IsDefaultPhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumber',
                Value : PhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumberExtension',
                Value : PhoneNumberExtension,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalPhoneNumber',
                Value : InternationalPhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumberType',
                Value : PhoneNumberType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressCommunicationRemarkText',
                Value : AddressCommunicationRemarkText,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Mobile Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.AddressPhoneNumber with @(
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
                    Property : OrdinalNumber,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 0',
    }
);
annotate service.AddressPhoneNumber with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },{
            $Type : 'UI.DataField',
            Value : AddressID,
            Label : 'AddressID',
        },{
            $Type : 'UI.DataField',
            Value : OrdinalNumber,
            Label : 'OrdinalNumber',
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultPhoneNumber,
            Label : 'IsDefaultPhoneNumber',
        },],
    UI.SelectionPresentationVariant #tableView : {
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
        Text : 'Table View',
    }
);
annotate service.AddressPhoneNumber with @(
    UI.SelectionFields : [
        Person,
        AddressID,
        OrdinalNumber,
        IsDefaultPhoneNumber,
    ]
);
annotate service.AddressPhoneNumber with {
    Person @Common.Label : 'Person'
};
annotate service.AddressPhoneNumber with {
    AddressID @Common.Label : 'AddressID'
};
annotate service.AddressPhoneNumber with {
    OrdinalNumber @Common.Label : 'OrdinalNumber'
};
annotate service.AddressPhoneNumber with {
    Person @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressPhoneNumber',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Person,
                    ValueListProperty : 'Person',
                },
            ],
            Label : 'Person',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AddressPhoneNumber with {
    AddressID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressPhoneNumber',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : AddressID,
                    ValueListProperty : 'AddressID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AddressPhoneNumber with {
    OrdinalNumber @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressPhoneNumber',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : OrdinalNumber,
                    ValueListProperty : 'OrdinalNumber',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AddressPhoneNumber with {
    IsDefaultPhoneNumber @Common.Label : 'IsDefaultPhoneNumber'
};
annotate service.AddressPhoneNumber with {
    IsDefaultPhoneNumber @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressPhoneNumber',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : IsDefaultPhoneNumber,
                    ValueListProperty : 'IsDefaultPhoneNumber',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
