using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.AddressHomePage with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
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
            Label : 'ValidityStartDate',
            Value : ValidityStartDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsDefaultURLAddress',
            Value : IsDefaultURLAddress,
        },
    ]
);
annotate service.AddressHomePage with @(
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
                Label : 'ValidityStartDate',
                Value : ValidityStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsDefaultURLAddress',
                Value : IsDefaultURLAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SearchURLAddress',
                Value : SearchURLAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressCommunicationRemarkText',
                Value : AddressCommunicationRemarkText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'URLFieldLength',
                Value : URLFieldLength,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WebsiteURL',
                Value : WebsiteURL,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'URL Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.AddressHomePage with @(
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
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },{
            $Type : 'UI.DataField',
            Value : URLFieldLength,
            Label : 'URLFieldLength',
        },{
            $Type : 'UI.DataField',
            Value : ValidityStartDate,
            Label : 'ValidityStartDate',
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultURLAddress,
            Label : 'IsDefaultURLAddress',
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
annotate service.AddressHomePage with @(
    UI.SelectionFields : [
        ID,
        URLFieldLength,
    ]
);
annotate service.AddressHomePage with {
    ID @Common.Label : 'ID'
};
annotate service.AddressHomePage with {
    URLFieldLength @Common.Label : 'URL Length'
};
annotate service.AddressHomePage with {
    URLFieldLength @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressHomePage',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : URLFieldLength,
                    ValueListProperty : 'URLFieldLength',
                },
            ],
            Label : 'URL Length',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AddressHomePage with {
    ID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AddressHomePage',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'ID',
        },
        Common.ValueListWithFixedValues : true
)};
