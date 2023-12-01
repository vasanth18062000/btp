using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.Customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Business Partner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PersonFullName',
            Value : PersonFullName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Supplier',
            Value : Supplier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AcademicTitle',
            Value : AcademicTitle,
        },
    ]
);
annotate service.Customer with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'PersonFullName',
                Value : PersonFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer',
                Value : Customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : Supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerCategory',
                Value : BusinessPartnerCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerGrouping',
                Value : BusinessPartnerGrouping,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerName',
                Value : BusinessPartnerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerFullName',
                Value : BusinessPartnerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormOfAddress',
                Value : FormOfAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GenderCodeName',
                Value : GenderCodeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Language',
                Value : Language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LegalForm',
                Value : LegalForm,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationBPName1',
                Value : OrganizationBPName1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationBPName2',
                Value : OrganizationBPName2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationFoundationDate',
                Value : OrganizationFoundationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationLiquidationDate',
                Value : OrganizationLiquidationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SearchTerm2',
                Value : SearchTerm2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BirthDate',
                Value : BirthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ETag',
                Value : ETag,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IndependentAddressID',
                Value : IndependentAddressID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NameCountry',
                Value : NameCountry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PersonNumber',
                Value : PersonNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsMarkedForArchiving',
                Value : IsMarkedForArchiving,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerIDByExtSystem',
                Value : BusinessPartnerIDByExtSystem,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerPrintFormat',
                Value : BusinessPartnerPrintFormat,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerOccupation',
                Value : BusinessPartnerOccupation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NaturalPersonEmployerName',
                Value : NaturalPersonEmployerName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Bp Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'BPAddress',
            ID : 'BPAddress',
            Target : 'to_BusinessPartnerAddress/@UI.LineItem#BPAddress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'BP Bank',
            ID : 'BPBank',
            Target : 'to_BusinessPartnerBank/@UI.LineItem#BPBank',
        },
    ]
);
annotate service.Customer with @(
    UI.SelectionFields : [
        BusinessPartner,
        Customer,
        GroupBusinessPartnerName1,
    ]
);
annotate service.Customer with {
    BusinessPartner @Common.Label : 'Business Partner'
};
annotate service.Customer with {
    Customer @Common.Label : 'Customer'
};
annotate service.Customer with {
    GroupBusinessPartnerName1 @Common.Label : 'GroupBusinessPartnerName1'
};
annotate service.Customer with @(
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
                    Property : BusinessPartner,
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
annotate service.Customer with @(
    UI.LineItem #tableView : [
    ],
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
annotate service.Address_Partner with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
            Label : 'AddressID',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },{
            $Type : 'UI.DataField',
            Value : CityName,
            Label : 'CityName',
        },{
            $Type : 'UI.DataField',
            Value : Country,
            Label : 'Country',
        },{
            $Type : 'UI.DataField',
            Value : DeliveryServiceNumber,
            Label : 'DeliveryServiceNumber',
        },{
            $Type : 'UI.DataField',
            Value : CityCode,
            Label : 'CityCode',
        },{
            $Type : 'UI.DataField',
            Value : District,
            Label : 'District',
        },{
            $Type : 'UI.DataField',
            Value : FullName,
            Label : 'FullName',
        },{
            $Type : 'UI.DataField',
            Value : HouseNumber,
            Label : 'HouseNumber',
        },{
            $Type : 'UI.DataField',
            Value : HomeCityName,
            Label : 'HomeCityName',
        },{
            $Type : 'UI.DataField',
            Value : Language,
            Label : 'Language',
        },{
            $Type : 'UI.DataField',
            Value : Region,
            Label : 'Region',
        },{
            $Type : 'UI.DataField',
            Value : PostalCode,
            Label : 'PostalCode',
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
        Text : 'Table View Address_Partner',
    }
);
annotate service.Address_Partner with @(
    UI.LineItem #BPAddress : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
            Label : 'AddressID',
        },{
            $Type : 'UI.DataField',
            Value : AddressTimeZone,
            Label : 'AddressTimeZone',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },{
            $Type : 'UI.DataField',
            Value : CityName,
            Label : 'CityName',
        },{
            $Type : 'UI.DataField',
            Value : Country,
            Label : 'Country',
        },{
            $Type : 'UI.DataField',
            Value : CountyCode,
            Label : 'CountyCode',
        },{
            $Type : 'UI.DataField',
            Value : CompanyPostalCode,
            Label : 'CompanyPostalCode',
        },{
            $Type : 'UI.DataField',
            Value : District,
            Label : 'District',
        },{
            $Type : 'UI.DataField',
            Value : FullName,
            Label : 'FullName',
        },{
            $Type : 'UI.DataField',
            Value : HouseNumber,
            Label : 'HouseNumber',
        },{
            $Type : 'UI.DataField',
            Value : POBox,
            Label : 'POBox',
        },{
            $Type : 'UI.DataField',
            Value : PostalCode,
            Label : 'PostalCode',
        },{
            $Type : 'UI.DataField',
            Value : Region,
            Label : 'Region',
        },{
            $Type : 'UI.DataField',
            Value : StreetName,
            Label : 'StreetName',
        },{
            $Type : 'UI.DataField',
            Value : TransportZone,
            Label : 'TransportZone',
        },]
);
annotate service.BusinessPartnerBank with @(
    UI.LineItem #BPBank : [
        {
            $Type : 'UI.DataField',
            Value : BankAccountHolderName,
            Label : 'BankAccountHolderName',
        },{
            $Type : 'UI.DataField',
            Value : BankAccountName,
            Label : 'BankAccountName',
        },{
            $Type : 'UI.DataField',
            Value : BankAccount,
            Label : 'BankAccount',
        },{
            $Type : 'UI.DataField',
            Value : BankName,
            Label : 'BankName',
        },{
            $Type : 'UI.DataField',
            Value : BankNumber,
            Label : 'BankNumber',
        },{
            $Type : 'UI.DataField',
            Value : CityName,
            Label : 'CityName',
        },{
            $Type : 'UI.DataField',
            Value : IBAN,
            Label : 'IBAN',
        },{
            $Type : 'UI.DataField',
            Value : SWIFTCode,
            Label : 'SWIFTCode',
        },]
);

annotate service.Customer with {
    Customer @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Customer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Customer,
                    ValueListProperty : 'Customer',
                },
            ],
            Label : 'customer',
        PresentationVariantQualifier : 'vh_Customer_Customer',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Customer with @(
    UI.PresentationVariant #vh_Customer_Customer : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : Customer,
                Descending : false,
            },
        ],
    }
);
annotate service.Customer with @(
    UI.HeaderInfo : {
        ImageUrl : BusinessPartner,
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLRAP7kctR4oesor4kPHWFZnNnFOjGwXYjQ2-EaQ0&s',
    }
);
annotate service.Customer with {
    BusinessPartner @Common.Text : BusinessPartnerFullName
};
