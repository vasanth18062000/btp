using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.BPContactToFuncAndDept with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ValidityEndDate',
            Value : ValidityEndDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerPerson',
            Value : BusinessPartnerPerson,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerCompany',
            Value : BusinessPartnerCompany,
        },
        {
            $Type : 'UI.DataField',
            Label : 'RelationshipNumber',
            Value : RelationshipNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ContactPersonAuthorityType',
            Value : ContactPersonAuthorityType,
        },
    ]
);
annotate service.BPContactToFuncAndDept with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'RelationshipNumber',
                Value : RelationshipNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerCompany',
                Value : BusinessPartnerCompany,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerPerson',
                Value : BusinessPartnerPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValidityEndDate',
                Value : ValidityEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonAuthorityType',
                Value : ContactPersonAuthorityType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonDepartment',
                Value : ContactPersonDepartment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonDepartmentName',
                Value : ContactPersonDepartmentName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonFunction',
                Value : ContactPersonFunction,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonFunctionName',
                Value : ContactPersonFunctionName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonRemarkText',
                Value : ContactPersonRemarkText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonVIPType',
                Value : ContactPersonVIPType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmailAddress',
                Value : EmailAddress,
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
                Label : 'PhoneNumberExtension',
                Value : PhoneNumberExtension,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumber',
                Value : PhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RelationshipCategory',
                Value : RelationshipCategory,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Function and Department',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
