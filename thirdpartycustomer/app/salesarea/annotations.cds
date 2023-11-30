using com.mashup.MyService as service from '../../srv/mashup';

annotate service.CustomerSalesArea with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganization',
            Value : SalesOrganization,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DistributionChannel',
            Value : DistributionChannel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Division',
            Value : Division,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AccountByCustomer',
            Value : AccountByCustomer,
        },
    ]
);
annotate service.CustomerSalesArea with @(
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
                Label : 'SalesOrganization',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DistributionChannel',
                Value : DistributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Division',
                Value : Division,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AccountByCustomer',
                Value : AccountByCustomer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AuthorizationGroup',
                Value : AuthorizationGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BillingIsBlockedForCustomer',
                Value : BillingIsBlockedForCustomer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : Currency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerPaymentTerms',
                Value : CustomerPaymentTerms,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PriceListType',
                Value : PriceListType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProductUnitGroup',
                Value : ProductUnitGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesGroup',
                Value : SalesGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShippingCondition',
                Value : ShippingCondition,
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
