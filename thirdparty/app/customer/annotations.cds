using com.mashup.MyService as service from '../../srv/mashup';

annotate service.Customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
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
            Label : 'CreatedByUser',
            Value : CreatedByUser,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreationDate',
            Value : CreationDate,
        },
    ]
);
annotate service.Customer with @(
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
                Label : 'CreatedByUser',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDate',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerAccountGroup',
                Value : CustomerAccountGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerClassification',
                Value : CustomerClassification,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerFullName',
                Value : CustomerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPCustomerFullName',
                Value : BPCustomerFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerName',
                Value : CustomerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPCustomerName',
                Value : BPCustomerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryIsBlocked',
                Value : DeliveryIsBlocked,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreeDefinedAttribute01',
                Value : FreeDefinedAttribute01,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : Supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PaymentReason',
                Value : PaymentReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ResponsibleType',
                Value : ResponsibleType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityCode',
                Value : CityCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'County',
                Value : County,
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
            Label : 'Customer Dept Identifier',
            ID : 'CustomerDeptIdentifier',
            Target : 'to_CustAddrDepdntExtIdentifier/@UI.LineItem#CustomerDeptIdentifier',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Customer Company',
            ID : 'CustomerCompany',
            Target : 'to_CustomerCompany/@UI.LineItem#CustomerCompany',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Customer Sales Area',
            ID : 'CustomerSalesArea',
            Target : 'to_CustomerSalesArea/@UI.LineItem#CustomerSalesArea',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Customer Unloading Point',
            ID : 'CustomerUnloadingPoint',
            Target : 'to_CustomerUnloadingPoint/@UI.LineItem#CustomerUnloadingPoint',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Tax Grouping',
            ID : 'TaxGrouping',
            Target : 'to_CustomerTaxGrouping/@UI.LineItem#TaxGrouping',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Customer Text',
            ID : 'CustomerText',
            Target : 'to_CustomerText/@UI.LineItem#CustomerText',
        },
    ]
);
annotate service.Customer with @(
    UI.SelectionFields : [
        CustomerName,
    ]
);
annotate service.Customer with {
    CustomerName @Common.Label : 'CustomerName'
};
annotate service.CustAddrDepdntExtIdentifier with @(
    UI.LineItem #CustomerDeptIdentifier : [
        {
            $Type : 'UI.DataField',
            Value : Customer,
            Label : 'Customer',
        },{
            $Type : 'UI.DataField',
            Value : CustomerExternalRefID,
            Label : 'CustomerExternalRefID',
        },]
);
annotate service.CustomerCompany with @(
    UI.LineItem #CustomerCompany : [
        {
            $Type : 'UI.DataField',
            Value : AccountByCustomer,
            Label : 'AccountByCustomer',
        },{
            $Type : 'UI.DataField',
            Value : AccountingClerk,
            Label : 'AccountingClerk',
        },{
            $Type : 'UI.DataField',
            Value : AccountingClerkFaxNumber,
            Label : 'AccountingClerkFaxNumber',
        },{
            $Type : 'UI.DataField',
            Value : AccountingClerkInternetAddress,
            Label : 'AccountingClerkInternetAddress',
        },{
            $Type : 'UI.DataField',
            Value : AccountingClerkPhoneNumber,
            Label : 'AccountingClerkPhoneNumber',
        },{
            $Type : 'UI.DataField',
            Value : AlternativePayerAccount,
            Label : 'AlternativePayerAccount',
        },{
            $Type : 'UI.DataField',
            Value : AuthorizationGroup,
            Label : 'AuthorizationGroup',
        },{
            $Type : 'UI.DataField',
            Value : CollectiveInvoiceVariant,
            Label : 'CollectiveInvoiceVariant',
        },{
            $Type : 'UI.DataField',
            Value : APARToleranceGroup,
            Label : 'APARToleranceGroup',
        },{
            $Type : 'UI.DataField',
            Value : CustomerAccountGroup,
            Label : 'CustomerAccountGroup',
        },{
            $Type : 'UI.DataField',
            Value : CustomerAccountNote,
            Label : 'CustomerAccountNote',
        },{
            $Type : 'UI.DataField',
            Value : HouseBank,
            Label : 'HouseBank',
        },{
            $Type : 'UI.DataField',
            Value : CustomerHeadOffice,
            Label : 'CustomerHeadOffice',
        },{
            $Type : 'UI.DataField',
            Value : InterestCalculationCode,
            Label : 'InterestCalculationCode',
        },{
            $Type : 'UI.DataField',
            Value : PaymentBlockingReason,
            Label : 'PaymentBlockingReason',
        },{
            $Type : 'UI.DataField',
            Value : InterestCalculationDate,
            Label : 'InterestCalculationDate',
        },{
            $Type : 'UI.DataField',
            Value : PaymentTerms,
            Label : 'PaymentTerms',
        },{
            $Type : 'UI.DataField',
            Value : PaymentReason,
            Label : 'PaymentReason',
        },{
            $Type : 'UI.DataField',
            Value : ReconciliationAccount,
            Label : 'ReconciliationAccount',
        },{
            $Type : 'UI.DataField',
            Value : ValueAdjustmentKey,
            Label : 'ValueAdjustmentKey',
        },{
            $Type : 'UI.DataField',
            Value : UserAtCustomer,
            Label : 'UserAtCustomer',
        },]
);
annotate service.CustomerSalesArea with @(
    UI.LineItem #CustomerSalesArea : [
        {
            $Type : 'UI.DataField',
            Value : AccountByCustomer,
            Label : 'AccountByCustomer',
        },{
            $Type : 'UI.DataField',
            Value : AuthorizationGroup,
            Label : 'AuthorizationGroup',
        },{
            $Type : 'UI.DataField',
            Value : BillingIsBlockedForCustomer,
            Label : 'BillingIsBlockedForCustomer',
        },{
            $Type : 'UI.DataField',
            Value : Currency,
            Label : 'Currency',
        },{
            $Type : 'UI.DataField',
            Value : CustomerPaymentTerms,
            Label : 'CustomerPaymentTerms',
        },{
            $Type : 'UI.DataField',
            Value : DistributionChannel,
            Label : 'DistributionChannel',
        },{
            $Type : 'UI.DataField',
            Value : PriceListType,
            Label : 'PriceListType',
        },{
            $Type : 'UI.DataField',
            Value : Division,
            Label : 'Division',
        },{
            $Type : 'UI.DataField',
            Value : SalesOrganization,
            Label : 'SalesOrganization',
        },{
            $Type : 'UI.DataField',
            Value : SalesGroup,
            Label : 'SalesGroup',
        },{
            $Type : 'UI.DataField',
            Value : ProductUnitGroup,
            Label : 'ProductUnitGroup',
        },{
            $Type : 'UI.DataField',
            Value : ShippingCondition,
            Label : 'ShippingCondition',
        },]
);
annotate service.CustomerUnloadingPoint with @(
    UI.LineItem #CustomerUnloadingPoint : [
        {
            $Type : 'UI.DataField',
            Value : BPGoodsReceivingHoursCode,
            Label : 'BPGoodsReceivingHoursCode',
        },{
            $Type : 'UI.DataField',
            Value : CustomerFactoryCalenderCode,
            Label : 'CustomerFactoryCalenderCode',
        },{
            $Type : 'UI.DataField',
            Value : IsDfltBPUnloadingPoint,
            Label : 'IsDfltBPUnloadingPoint',
        },{
            $Type : 'UI.DataField',
            Value : SaturdayAfternoonOpeningTime,
            Label : 'SaturdayAfternoonOpeningTime',
        },{
            $Type : 'UI.DataField',
            Value : SaturdayMorningClosingTime,
            Label : 'SaturdayMorningClosingTime',
        },{
            $Type : 'UI.DataField',
            Value : SaturdayMorningOpeningTime,
            Label : 'SaturdayMorningOpeningTime',
        },{
            $Type : 'UI.DataField',
            Value : UnloadingPointName,
            Label : 'UnloadingPointName',
        },]
);
annotate service.CustomerTaxGrouping with @(
    UI.LineItem #TaxGrouping : [
        {
            $Type : 'UI.DataField',
            Value : CustTaxGroupExemptionEndDate,
            Label : 'CustTaxGroupExemptionEndDate',
        },{
            $Type : 'UI.DataField',
            Value : CustTaxGroupExemptionRate,
            Label : 'CustTaxGroupExemptionRate',
        },{
            $Type : 'UI.DataField',
            Value : CustTaxGroupExemptionStartDate,
            Label : 'CustTaxGroupExemptionStartDate',
        },{
            $Type : 'UI.DataField',
            Value : CustTaxGroupSubjectedEndDate,
            Label : 'CustTaxGroupSubjectedEndDate',
        },{
            $Type : 'UI.DataField',
            Value : CustTaxGroupSubjectedStartDate,
            Label : 'CustTaxGroupSubjectedStartDate',
        },{
            $Type : 'UI.DataField',
            Value : CustTaxGrpExemptionCertificate,
            Label : 'CustTaxGrpExemptionCertificate',
        },]
);
annotate service.CustomerText with @(
    UI.LineItem #CustomerText : [
        {
            $Type : 'UI.DataField',
            Value : Customer,
            Label : 'Customer',
        },{
            $Type : 'UI.DataField',
            Value : LongText,
            Label : 'LongText',
        },]
);
