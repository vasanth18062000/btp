using com.ladera.mashup.MyService as service from '../../srv/mashup';

annotate service.bpyearinformation with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPAnnualStockholderMeetingDate',
            Value : BPAnnualStockholderMeetingDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPBalanceSheetCurrency',
            Value : BPBalanceSheetCurrency,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartnerFiscalYear',
            Value : BusinessPartnerFiscalYear,
        },
    ]
);
annotate service.bpyearinformation with @(
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
                Label : 'BPAnnualStockholderMeetingDate',
                Value : BPAnnualStockholderMeetingDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPBalanceSheetCurrency',
                Value : BPBalanceSheetCurrency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BusinessPartnerFiscalYear',
                Value : BusinessPartnerFiscalYear,
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
