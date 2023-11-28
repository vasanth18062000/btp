using com.ser.MyService as service from '../../srv/incident-service';
using from '../../srv/mashup';
using from '../../srv/external/index';


annotate service.Customer with @(
    UI.SelectionFields : [
        BusinessPartnerFullName,
        BusinessPartner,
    ]
);

using from '../../srv/mashup';
using from '../../srv/external/index';


annotate service.Customer with {
    BusinessPartnerFullName @Common.Label : 'BusinessPartnerFullName'
};

using from '../../srv/mashup';
using from '../../srv/external/index';
using from '../fiori';



annotate service.Customer with {
    BusinessPartner @Common.Label : 'BusinessPartner'
};
annotate service.Customer with {
    BusinessPartnerFullName @Common.Text : BusinessPartner
};
annotate service.Customer with {
    BusinessPartnerFullName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Customer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : BusinessPartnerFullName,
                    ValueListProperty : 'BusinessPartner',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Customer with {
    BusinessPartner @Common.Text : BusinessPartnerFullName
};
annotate service.Customer with @(
    UI.FieldGroup #customer : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Full Name',
                Value : BusinessPartnerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedByUser,',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedByUser,',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDate,',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Value : AcademicTitle,
                Label : 'AcademicTitle',
            },
            {
                $Type : 'UI.DataField',
                Value : AuthorizationGroup,
                Label : 'AuthorizationGroup',
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : Customer,
                Label : 'Customer',
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
                Label : 'FirstName',
            },
            {
                $Type : 'UI.DataField',
                Value : Language,
                Label : 'Language',
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
                Label : 'LastName',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier,
                Label : 'Supplier',
            },
        ],
    }
);
annotate service.A_BusinessPartnerAddress with @(
    UI.FieldGroup #address : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ValidityStartDate,
                Label : 'ValidityStartDate',
            },{
                $Type : 'UI.DataField',
                Value : ValidityEndDate,
                Label : 'ValidityEndDate',
            },{
                $Type : 'UI.DataField',
                Value : StreetSuffixName,
                Label : 'StreetSuffixName',
            },{
                $Type : 'UI.DataField',
                Value : StreetPrefixName,
                Label : 'StreetPrefixName',
            },{
                $Type : 'UI.DataField',
                Value : StreetName,
                Label : 'StreetName',
            },{
                $Type : 'UI.DataField',
                Value : PostalCode,
                Label : 'PostalCode',
            },{
                $Type : 'UI.DataField',
                Value : District,
                Label : 'District',
            },{
                $Type : 'UI.DataField',
                Value : HouseNumber,
                Label : 'HouseNumber',
            },{
                $Type : 'UI.DataField',
                Value : CompanyPostalCode,
                Label : 'CompanyPostalCode',
            },{
                $Type : 'UI.DataField',
                Value : CityName,
                Label : 'CityName',
            },{
                $Type : 'UI.DataField',
                Value : CityCode,
                Label : 'CityCode',
            },{
                $Type : 'UI.DataField',
                Value : BusinessPartner,
                Label : 'BusinessPartner',
            },],
    }
);
