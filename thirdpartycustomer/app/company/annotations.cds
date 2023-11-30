using com.mashup.MyService as service from '../../srv/mashup';

annotate service.CustomerCompany with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'APARToleranceGroup',
            Value : APARToleranceGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AccountByCustomer',
            Value : AccountByCustomer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AccountingClerk',
            Value : AccountingClerk,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AccountingClerkFaxNumber',
            Value : AccountingClerkFaxNumber,
        },
    ]
);
annotate service.CustomerCompany with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Customer',
                Value : Customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'APARToleranceGroup',
                Value : APARToleranceGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountByCustomer',
                Value : AccountByCustomer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountingClerk',
                Value : AccountingClerk,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountingClerkFaxNumber',
                Value : AccountingClerkFaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountingClerkInternetAddress',
                Value : AccountingClerkInternetAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountingClerkPhoneNumber',
                Value : AccountingClerkPhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AlternativePayerAccount',
                Value : AlternativePayerAccount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CollectiveInvoiceVariant',
                Value : CollectiveInvoiceVariant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerAccountNote',
                Value : CustomerAccountNote,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerHeadOffice',
                Value : CustomerHeadOffice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HouseBank',
                Value : HouseBank,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InterestCalculationCode',
                Value : InterestCalculationCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InterestCalculationDate',
                Value : InterestCalculationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PaymentBlockingReason',
                Value : PaymentBlockingReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PaymentReason',
                Value : PaymentReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PaymentTerms',
                Value : PaymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ReconciliationAccount',
                Value : ReconciliationAccount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UserAtCustomer',
                Value : UserAtCustomer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValueAdjustmentKey',
                Value : ValueAdjustmentKey,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerAccountGroup',
                Value : CustomerAccountGroup,
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
