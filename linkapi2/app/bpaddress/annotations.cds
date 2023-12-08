using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.Address_Partner with @(
    UI.LineItem : [
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
            Label : 'CityName',
            Value : CityName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CityCode',
            Value : CityCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },
    ]
);
annotate service.Address_Partner with @(
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
                Label : 'AddressID',
                Value : AddressID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityCode',
                Value : CityCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'District',
                Value : District,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyPostalCode',
                Value : CompanyPostalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormOfAddress',
                Value : FormOfAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HomeCityName',
                Value : HomeCityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HouseNumber',
                Value : HouseNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Language',
                Value : Language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'POBox',
                Value : POBox,
            },
            {
                $Type : 'UI.DataField',
                Label : 'POBoxPostalCode',
                Value : POBoxPostalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Person',
                Value : Person,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PostalCode',
                Value : PostalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Region',
                Value : Region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StreetName',
                Value : StreetName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CountyCode',
                Value : CountyCode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Address Info',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Email',
            ID : 'Email',
            Target : 'EmailAssociation/@UI.LineItem#Email',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Phone Details',
            ID : 'PhoneDetails',
            Target : 'to_PhoneNumber/@UI.LineItem#PhoneDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Home URL',
            ID : 'HomeURL',
            Target : 'to_URLAddress/@UI.LineItem#HomeURL1',
        },
    ]
);
annotate service.Email_Partner with @(
    UI.LineItem #Email : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
            Label : 'AddressID',
        },{
            $Type : 'UI.DataField',
            Value : EmailAddress,
            Label : 'EmailAddress',
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultEmailAddress,
            Label : 'IsDefaultEmailAddress',
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },]
);
annotate service.AddressPhoneNumber with @(
    UI.DataPoint #Person : {
        $Type : 'UI.DataPointType',
        Value : Person,
        Title : 'Person',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Person',
            Target : '@UI.DataPoint#Person',
        },
    ]
);
annotate service.AddressPhoneNumber with @(
    UI.LineItem #PhoneDetails : [
        {
            $Type : 'UI.DataField',
            Value : PhoneNumberExtension,
            Label : 'PhoneNumberExtension',
        },{
            $Type : 'UI.DataField',
            Value : PhoneNumber,
            Label : 'PhoneNumber',
        },{
            $Type : 'UI.DataField',
            Value : PhoneNumberType,
            Label : 'PhoneNumberType',
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultPhoneNumber,
        },]
);
annotate service.AddressHomePage with @(
    UI.LineItem #HomeURL1 : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultURLAddress,
            Label : 'IsDefaultURLAddress',
        },{
            $Type : 'UI.DataField',
            Value : OrdinalNumber,
            Label : 'OrdinalNumber',
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },{
            $Type : 'UI.DataField',
            Value : WebsiteURL,
            Label : 'WebsiteURL',
        },]
);
annotate service.Address_Partner with @(
    UI.HeaderInfo : {
        TypeImageUrl : 'sap-icon://business-card',
        TypeName : '',
        TypeNamePlural : '',
    }
);
