using com.ladera.mashup.MyService as service from '../../srv/mashup';

annotate service.bupaIdentyfication with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPIdentificationNumber',
            Value : BPIdentificationNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPIdentificationEntryDate',
            Value : BPIdentificationEntryDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPIdnNmbrIssuingInstitute',
            Value : BPIdnNmbrIssuingInstitute,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AuthorizationGroup',
            Value : AuthorizationGroup,
        },
    ]
);
annotate service.bupaIdentyfication with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPIdentificationNumber',
                Value : BPIdentificationNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPIdentificationEntryDate',
                Value : BPIdentificationEntryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPIdnNmbrIssuingInstitute',
                Value : BPIdnNmbrIssuingInstitute,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValidityEndDate',
                Value : ValidityEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValidityStartDate',
                Value : ValidityStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Region',
                Value : Region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPIdentificationType',
                Value : BPIdentificationType,
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
