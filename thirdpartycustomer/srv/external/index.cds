using {API_BUSINESS_PARTNER as api} from './API_BUSINESS_PARTNER';
namespace com.api.entities;
entity Customer as projection on api.A_Customer{
    key Customer,
AuthorizationGroup,
BillingIsBlockedForCustomer,
CreatedByUser,
CreationDate,
CustomerAccountGroup,
CustomerClassification,
CustomerFullName,
BPCustomerFullName,
CustomerName,
BPCustomerName,
DeliveryIsBlocked,
FreeDefinedAttribute01,
Supplier,
PaymentReason,
ResponsibleType,
CityCode,
County,
to_CustAddrDepdntExtIdentifier,
to_CustomerCompany,
to_CustomerSalesArea,
to_CustomerUnloadingPoint,
to_CustomerTaxGrouping,
to_CustomerText
}
entity CustAddrDepdntExtIdentifier as projection on api.A_CustAddrDepdntExtIdentifier{
    key Customer,
CustomerExternalRefID

}

entity CustomerCompany as projection on api.A_CustomerCompany{
    key Customer,
APARToleranceGroup,
AccountByCustomer,
AccountingClerk,
AccountingClerkFaxNumber,
AccountingClerkInternetAddress,
AccountingClerkPhoneNumber,
AlternativePayerAccount,
AuthorizationGroup,
CollectiveInvoiceVariant,
CustomerAccountNote,
CustomerHeadOffice,
HouseBank,
InterestCalculationCode,
InterestCalculationDate,
PaymentBlockingReason,
PaymentReason,
PaymentTerms,
ReconciliationAccount,
UserAtCustomer,
ValueAdjustmentKey,
CustomerAccountGroup
}

entity CustomerSalesArea as projection on api.A_CustomerSalesArea{
    key Customer,
SalesOrganization,
DistributionChannel,
Division,
AccountByCustomer,
AuthorizationGroup,
BillingIsBlockedForCustomer,
Currency,
CustomerPaymentTerms,
PriceListType,
ProductUnitGroup,
SalesGroup,
ShippingCondition
}

entity CustomerUnloadingPoint as projection on api.A_CustomerUnloadingPoint{
    key Customer,
UnloadingPointName,
CustomerFactoryCalenderCode,
BPGoodsReceivingHoursCode,
IsDfltBPUnloadingPoint,
SaturdayMorningClosingTime,
SaturdayMorningOpeningTime,
SaturdayAfternoonOpeningTime
}

entity CustomerTaxGrouping as projection on api.A_CustomerTaxGrouping{
    key Customer,
    CustTaxGrpExemptionCertificate,
CustTaxGroupExemptionRate,
CustTaxGroupExemptionStartDate,
CustTaxGroupExemptionEndDate,
CustTaxGroupSubjectedStartDate,
CustTaxGroupSubjectedEndDate
}

entity CustomerText as projection on api.A_CustomerText{
    key Customer,
LongText
}