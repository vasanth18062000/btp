using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.BusinessPartnerBank with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BankIdentification',
            Value : BankIdentification,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BusinessPartner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankCountryKey',
            Value : BankCountryKey,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankName',
            Value : BankName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BankNumber',
            Value : BankNumber,
        },
    ]
);
annotate service.BusinessPartnerBank with @(
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
                Label : 'BankIdentification',
                Value : BankIdentification,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankCountryKey',
                Value : BankCountryKey,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankName',
                Value : BankName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankNumber',
                Value : BankNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SWIFTCode',
                Value : SWIFTCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankControlKey',
                Value : BankControlKey,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankAccountHolderName',
                Value : BankAccountHolderName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankAccountName',
                Value : BankAccountName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IBAN',
                Value : IBAN,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IBANValidityStartDate',
                Value : IBANValidityStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankAccount',
                Value : BankAccount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BankAccountReferenceText',
                Value : BankAccountReferenceText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CollectionAuthInd',
                Value : CollectionAuthInd,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'BP Bank Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.BusinessPartnerBank with @(
    UI.SelectionFields : [
        BankNumber,
        BankCountryKey,
        BankIdentification,
    ]
);
annotate service.BusinessPartnerBank with {
    BankNumber @Common.Label : 'BankNumber'
};
annotate service.BusinessPartnerBank with {
    BankCountryKey @Common.Label : 'BankCountryKey'
};
annotate service.BusinessPartnerBank with {
    BankIdentification @Common.Label : 'BankIdentification'
};
