using com.ladera.mashup.MyService as service from '../../srv/mashup';

annotate service.BusinessPartner with @(
    UI.LineItem : [
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
            Label : 'AcademicTitle',
            Value : AcademicTitle,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AuthorizationGroup',
            Value : AuthorizationGroup,
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerFullName,
        },
    ]
);
annotate service.BusinessPartner with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
                Label : 'BusinessPartnerFullName',
                Value : BusinessPartnerFullName,
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
                Label : 'CorrespondenceLanguage',
                Value : CorrespondenceLanguage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDate',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationTime',
                Value : CreationTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GenderCodeName',
                Value : GenderCodeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsSexUnknown',
                Value : IsSexUnknown,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsNaturalPerson',
                Value : IsNaturalPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsMale',
                Value : IsMale,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsFemale',
                Value : IsFemale,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalLocationNumber2',
                Value : InternationalLocationNumber2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InternationalLocationNumber1',
                Value : InternationalLocationNumber1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Industry',
                Value : Industry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerUUID,
                Label : 'BusinessPartnerUUID',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'to_BPCreditWorthiness/@Communication.Contact#contact',
                Label : 'Contact Name',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'to_BPCreditWorthiness/@Communication.Contact#contact2',
                Label : 'Contact Name',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Datacontrol',
            ID : 'Datacontrol',
            Target : 'to_BPDataController/@UI.LineItem#Datacontrol',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'FicalInfo',
            ID : 'FicalInfo',
            Target : 'to_BPFiscalYearInformation/@UI.LineItem#FicalInfo',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'BP_industry',
            ID : 'BP_industry',
            Target : 'to_BuPaIndustry/@UI.LineItem#BP_industry',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Business_identification',
            ID : 'Business_identification',
            Target : 'to_BuPaIdentification/@UI.LineItem#Business_identification',
        },
    ]
);
annotate service.BusinessPartner with @(
    UI.HeaderInfo : {
        TypeName : 'Busiesspartner',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : BusinessPartner,
        },
        Initials : BusinessPartner,
        TypeImageUrl : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLRAP7kctR4oesor4kPHWFZnNnFOjGwXYjQ2-EaQ0&s',
    }
);
annotate service.BusinessPartner with {
    BusinessPartner @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'bprelation',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : BusinessPartner,
                    ValueListProperty : 'BusinessPartner1',
                },
            ],
            Label : '{i18n>Businesspartnerelation}',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.BusinessPartner with @(
    UI.SelectionFields : [
        AcademicTitle,
        BusinessPartnerCategory,
        BusinessPartner,
    ]
);
annotate service.BusinessPartner with {
    AcademicTitle @Common.Label : 'AcademicTitle'
};
annotate service.BusinessPartner with {
    BusinessPartnerCategory @Common.Label : 'BusinessPartnerCategory'
};
annotate service.BusinessPartner with {
    BusinessPartnerFullName @Common.Label : 'BusinessPartnerFullName'
};
annotate service.BusinessPartner with {
    BusinessPartner @Common.Label : 'Businesspartner'
};
annotate service.BusinessPartner with {
    BusinessPartner @Common.Text : {
            $value : BusinessPartnerFullName,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.bpcreditinformation with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : BPCreditStandingComment,
    }
);
annotate service.BusinessPartner with {
    AcademicTitle @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : AcademicTitle,
                    ValueListProperty : 'BusinessPartner',
                },
            ],
            Label : 'Bpinfo',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.bpcreditinformation with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : BusinessPartner,
    }
);
annotate service.bpdatacontrol with @(
    UI.LineItem #Datacontrol : [
        {
            $Type : 'UI.DataField',
            Value : BPDataControllerIsDerived,
            Label : 'BPDataControllerIsDerived',
        },{
            $Type : 'UI.DataField',
            Value : DataControlAssignmentStatus,
            Label : 'DataControlAssignmentStatus',
        },{
            $Type : 'UI.DataField',
            Value : DataController,
            Label : 'DataController',
        },{
            $Type : 'UI.DataField',
            Value : PurposeDerived,
            Label : 'PurposeDerived',
        },{
            $Type : 'UI.DataField',
            Value : PurposeForPersonalData,
            Label : 'PurposeForPersonalData',
        },{
            $Type : 'UI.DataField',
            Value : PurposeType,
            Label : 'PurposeType',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },]
);
annotate service.bpyearinformation with @(
    UI.LineItem #FicalInfo : [
        {
            $Type : 'UI.DataField',
            Value : BPAnnualStockholderMeetingDate,
            Label : 'BPAnnualStockholderMeetingDate',
        },{
            $Type : 'UI.DataField',
            Value : BPBalanceSheetCurrency,
            Label : 'BPBalanceSheetCurrency',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartnerFiscalYear,
            Label : 'BusinessPartnerFiscalYear',
        },]
);
annotate service.bupaIndustry with @(
    UI.LineItem #BP_industry : [
        {
            $Type : 'UI.DataField',
            Value : IndustryKeyDescription,
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },{
            $Type : 'UI.DataField',
            Value : IndustrySector,
        },{
            $Type : 'UI.DataField',
            Value : IndustrySystemType,
        },{
            $Type : 'UI.DataField',
            Value : IsStandardIndustry,
        },]
);
annotate service.bupaIdentyfication with @(
    UI.LineItem #Business_identification : [
        {
            $Type : 'UI.DataField',
            Value : AuthorizationGroup,
            Label : 'AuthorizationGroup',
        },{
            $Type : 'UI.DataField',
            Value : BPIdentificationEntryDate,
            Label : 'BPIdentificationEntryDate',
        },{
            $Type : 'UI.DataField',
            Value : BPIdentificationNumber,
            Label : 'BPIdentificationNumber',
        },{
            $Type : 'UI.DataField',
            Value : Country,
            Label : 'Country',
        },{
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },]
);
annotate service.bpcreditinformation with @(
    UI.DataPoint #BPCreditStandingComment : {
        $Type : 'UI.DataPointType',
        Value : BPCreditStandingComment,
        Title : 'BPCreditStandingComment',
    },
    UI.DataPoint #BusinessPartner : {
        $Type : 'UI.DataPointType',
        Value : BusinessPartner,
        Title : 'BusinessPartner',
    },
    UI.DataPoint #BusPartCreditStanding : {
        $Type : 'UI.DataPointType',
        Value : BusPartCreditStanding,
        Title : 'BusPartCreditStanding',
    },
    UI.DataPoint #CreditRatingAgency : {
        $Type : 'UI.DataPointType',
        Value : CreditRatingAgency,
        Title : 'CreditRatingAgency',
    }
);
annotate service.BusinessPartner with @(
    UI.HeaderFacets : []
);
annotate service.bpcreditinformation with @(
    Communication.Contact #contact2 : {
        $Type : 'Communication.ContactType',
        fn : BPCreditStandingComment,
    }
);
