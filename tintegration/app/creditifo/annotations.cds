using com.ladera.mashup.MyService as service from '../../srv/mashup';

annotate service.bpcreditinformation with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusPartCreditStanding',
            Value : BusPartCreditStanding,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPCreditStandingComment',
            Value : BPCreditStandingComment,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreditRatingAgency',
            Value : CreditRatingAgency,
        },
    ]
);
annotate service.bpcreditinformation with @(
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
                Label : 'BusPartCreditStanding',
                Value : BusPartCreditStanding,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPCreditStandingComment',
                Value : BPCreditStandingComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreditRatingAgency',
                Value : CreditRatingAgency,
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerOathDate,
                Label : 'BusinessPartnerOathDate',
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerIsUnderOath,
                Label : 'BusinessPartnerIsUnderOath',
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerIsBankrupt,
                Label : 'BusinessPartnerIsBankrupt',
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerBankruptcyDate,
                Label : 'BusinessPartnerBankruptcyDate',
            },
            {
                $Type : 'UI.DataField',
                Value : BPLglProceedingInitiationDate,
                Label : 'BPLglProceedingInitiationDate',
            },
            {
                $Type : 'UI.DataField',
                Value : BPLegalProceedingStatus,
                Label : 'BPLegalProceedingStatus',
            },
            {
                $Type : 'UI.DataField',
                Value : BPForeclosureIsInitiated,
                Label : 'BPForeclosureIsInitiated',
            },
            {
                $Type : 'UI.DataField',
                Value : BPForeclosureDate,
                Label : 'BPForeclosureDate',
            },
            {
                $Type : 'UI.DataField',
                Value : BPCreditStandingRating,
                Label : 'BPCreditStandingRating',
            },
            {
                $Type : 'UI.DataField',
                Value : BPCreditStandingDate,
                Label : 'BPCreditStandingDate',
            },
            {
                $Type : 'UI.DataField',
                Value : BPCrdtWrthnssAccessChkIsActive,
                Label : 'BPCrdtWrthnssAccessChkIsActive',
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
