using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.DepdntIntlLocNumber with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AddressID',
            Value : AddressID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'InternationalLocationNumber1',
            Value : InternationalLocationNumber1,
        },
        {
            $Type : 'UI.DataField',
            Label : 'InternationalLocationNumber2',
            Value : InternationalLocationNumber2,
        },
        {
            $Type : 'UI.DataField',
            Label : 'InternationalLocationNumber3',
            Value : InternationalLocationNumber3,
        },
    ]
);
annotate service.DepdntIntlLocNumber with @(
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
                Label : 'BusinessPartner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalLocationNumber1',
                Value : InternationalLocationNumber1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalLocationNumber2',
                Value : InternationalLocationNumber2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalLocationNumber3',
                Value : InternationalLocationNumber3,
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
annotate service.DepdntIntlLocNumber with @(
    UI.SelectionFields : [
        AddressID,
        BusinessPartner,
    ]
);
annotate service.DepdntIntlLocNumber with {
    AddressID @Common.Label : 'AddressID'
};
annotate service.DepdntIntlLocNumber with {
    BusinessPartner @Common.Label : 'BusinessPartner'
};
