using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.BPContactToAddress with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'AddressID',
            Value : AddressID,
        },
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
    ]
);
annotate service.BPContactToAddress with @(
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
                Label : 'AddressID',
                Value : AddressID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressNumber',
                Value : AddressNumber,
            },
  
          
            {
                $Type : 'UI.DataField',
                Label : 'CityCode',
                Value : CityCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyPostalCode',
                Value : CompanyPostalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
       
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryServiceNumber',
                Value : DeliveryServiceNumber,
            },
         
            {
                $Type : 'UI.DataField',
                Label : 'District',
                Value : District,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormOfAddress',
                Value : FormOfAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FullName',
                Value : FullName,
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
                Label : 'TransportZone',
                Value : TransportZone,
            },
       
            {
                $Type : 'UI.DataField',
                Label : 'ContactPersonBuilding',
                Value : ContactPersonBuilding,
            },
          
            {
                $Type : 'UI.DataField',
                Label : 'Floor',
                Value : Floor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InhouseMail',
                Value : InhouseMail,
            },
         
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Contact to address Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Email Details',
            ID : 'EmailDetails',
            Target : 'to_EmailAddress/@UI.LineItem#EmailDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Fax Details',
            ID : 'FaxDetails',
            Target : 'to_FaxNumber/@UI.LineItem#FaxDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Mobile Details',
            ID : 'MobileDetails',
            Target : 'to_MobilePhoneNumber/@UI.LineItem#MobileDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Home URL',
            ID : 'HomeURL',
            Target : 'to_URLAddress/@UI.LineItem#HomeURL',
        },
    ]
);
annotate service.BPContactToAddress with @(
    UI.SelectionFields : [
        AddressID,
        BusinessPartnerPerson,
        RelationshipNumber,
    ]
);
annotate service.BPContactToAddress with {
    AddressID @Common.Label : 'AddressID'
};
annotate service.BPContactToAddress with {
    BusinessPartnerPerson @Common.Label : 'Business Partner Person'
};
annotate service.BPContactToAddress with {
    RelationshipNumber @Common.Label : 'Relationship Number'
};
annotate service.BPContactToAddress with {
    AddressID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'BPContactToAddress',
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
annotate service.Email_Partner with @(
    UI.LineItem #EmailDetails : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
            Label : 'AddressID',
        },{
            $Type : 'UI.DataField',
            Value : EmailAddress,
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultEmailAddress,
            Label : 'IsDefaultEmailAddress',
        },{
            $Type : 'UI.DataField',
            Value : Person,
        },]
);
annotate service.AddressFax with @(
    UI.LineItem #FaxDetails : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
        },{
            $Type : 'UI.DataField',
            Value : FaxCountry,
        },{
            $Type : 'UI.DataField',
            Value : FaxNumber,
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultFaxNumber,
            Label : 'IsDefaultFaxNumber',
        },{
            $Type : 'UI.DataField',
            Value : OrdinalNumber,
            Label : 'OrdinalNumber',
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },]
);
annotate service.AddressPhoneNumber with @(
    UI.LineItem #MobileDetails : [
        {
            $Type : 'UI.DataField',
            Value : AddressID,
        },{
            $Type : 'UI.DataField',
            Value : OrdinalNumber,
        },{
            $Type : 'UI.DataField',
            Value : PhoneNumber,
            Label : 'PhoneNumber',
        },{
            $Type : 'UI.DataField',
            Value : Person,
        },{
            $Type : 'UI.DataField',
            Value : PhoneNumberExtension,
            Label : 'PhoneNumberExtension',
        },{
            $Type : 'UI.DataField',
            Value : IsDefaultPhoneNumber,
        },]
);
annotate service.AddressHomePage with @(
    UI.LineItem #HomeURL : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },{
            $Type : 'UI.DataField',
            Value : Person,
            Label : 'Person',
        },{
            $Type : 'UI.DataField',
            Value : URLFieldLength,
        },{
            $Type : 'UI.DataField',
            Value : WebsiteURL,
            Label : 'WebsiteURL',
        },{
            $Type : 'UI.DataField',
            Value : OrdinalNumber,
            Label : 'OrdinalNumber',
        },]
);
