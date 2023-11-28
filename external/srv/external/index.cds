using {API_BUSINESS_PARTNER as api} from './API_BUSINESS_PARTNER';
// using { com.ladera.schema as bpa } from '../db/schema';
// using { com.ladera.incidentservice as servicefromincdent} from './incidents-service';

namespace com.ladera.index;


entity Customer as projection on api.A_BusinessPartner{
   key BusinessPartner,
   Customer,
  Supplier,
  AcademicTitle,
  AuthorizationGroup,
  BusinessPartnerFullName,
  CreatedByUser,
  CreationDate,
  FirstName,
  LastName,
  Language,
  to_BusinessPartnerAddress,
  to_Customer,
  to_Supplier
  
}

entity A_Supplier as projection on api.A_Supplier{
  key Supplier,
  AlternativePayeeAccountNumber,
  AuthorizationGroup,
  BusinessPartnerPanNumber,
  CreatedByUser,
  CreationDate,
  Customer,
  SupplierFullName,
  PaymentReason,
  TaxNumber1,
  TaxNumber2,
  TaxNumber3,
  to_SupplierCompany
}
entity A_SupplierCompany as projection on api.A_SupplierCompany{
  key Supplier,
  CompanyCode,
  AuthorizationGroup,
  CompanyCodeName,
  PaymentBlockingReason,
  SupplierIsBlockedForPosting,
  AccountingClerk,
  AccountingClerkPhoneNumber,
  SupplierClerk,
  PaymentMethodsList,
  PaymentReason,
  Currency,
}
entity A_BusinessPartnerAddress as projection on api.A_BusinessPartnerAddress{
    key BusinessPartner,
    key AddressID,
    ValidityStartDate,
    ValidityEndDate,
    CityCode,
    CityName,
    District,
    CompanyPostalCode,
    HouseNumber,
    PostalCode,
    StreetName,
    StreetPrefixName,
    StreetSuffixName,
    to_EmailAddress
}
entity Email_Partner as projection on api.A_AddressEmailAddress{
  AddressID,
  Person,
  EmailAddress ,
  IsDefaultEmailAddress

}

entity AddressFax as projection on api.A_AddressFaxNumber{

  key AddressID ,
  key Person ,
  key OrdinalNumber,
  IsDefaultFaxNumber,
  FaxCountry ,
  FaxNumber ,
  FaxNumberExtension ,
  InternationalFaxNumber,
  

}

entity AddressHomePage as projection on api.A_AddressHomePageURL{

  key AddressID as ID,
  key Person as Person,
  key OrdinalNumber,
  key ValidityStartDate,
  key IsDefaultURLAddress,
  SearchURLAddress,
  AddressCommunicationRemarkText,
  URLFieldLength,
  WebsiteURL
  
}

entity AddressPhoneNumber as projection on api.A_AddressPhoneNumber{

   key AddressID,
  key Person,
  key OrdinalNumber,
  DestinationLocationCountry,
  IsDefaultPhoneNumber,
  PhoneNumber,
  PhoneNumberExtension,
  InternationalPhoneNumber,
  PhoneNumberType,
  AddressCommunicationRemarkText

}

entity DepdntIntlLocNumber as projection on api.A_BPAddrDepdntIntlLocNumber{
key AddressID,
key BusinessPartner,
InternationalLocationNumber1,
InternationalLocationNumber2,
InternationalLocationNumber3


}

entity BPContactToAddress as projection on api.A_BPContactToAddress{
key RelationshipNumber,
key BusinessPartnerCompany,
key BusinessPartnerPerson,
key ValidityEndDate,
key AddressID,
AddressNumber,
AdditionalStreetPrefixName,
AdditionalStreetSuffixName,
AddressTimeZone,
CareOfName,
CityCode,
CityName,
CompanyPostalCode,
Country,
County,
DeliveryServiceNumber,
DeliveryServiceTypeCode,
District,
FormOfAddress,
FullName,
HomeCityName,
HouseNumber,
HouseNumberSupplementText,
Language,
POBox,
POBoxDeviatingCityName,
POBoxDeviatingCountry,
POBoxDeviatingRegion,
POBoxIsWithoutNumber,
POBoxLobbyName,
POBoxPostalCode,
Person,
PostalCode,
PrfrdCommMediumType,
Region,
StreetName,
StreetPrefixName,
TaxJurisdiction,
TransportZone,
AddressRepresentationCode,
ContactPersonBuilding,
ContactPersonPrfrdCommMedium,
ContactRelationshipDepartment,
ContactRelationshipFunction,
CorrespondenceShortName,
Floor,
InhouseMail,
IsDefaultAddress,
RoomNumber,
to_EmailAddress,
to_FaxNumber,
to_MobilePhoneNumber,
to_PhoneNumber,
to_URLAddress

}

entity BPContactToFuncAndDept as projection on  api.A_BPContactToFuncAndDept{
  key RelationshipNumber,
  key BusinessPartnerCompany,
  key BusinessPartnerPerson,
  key ValidityEndDate,
  ContactPersonAuthorityType,
  ContactPersonDepartment,
  ContactPersonDepartmentName,
  ContactPersonFunction,
  ContactPersonFunctionName,
  ContactPersonRemarkText,
  ContactPersonVIPType,
  EmailAddress,
  FaxNumber,
  FaxNumberExtension,
  PhoneNumberExtension,
  PhoneNumber,
  RelationshipCategory
}


entity BusinessPartnerBank as projection on api.A_BusinessPartnerBank{
key BusinessPartner, key BankIdentification,
BankCountryKey,BankName,BankNumber,SWIFTCode,BankControlKey,BankAccountHolderName,BankAccountName,IBAN,
IBANValidityStartDate,BankAccount,BankAccountReferenceText,CollectionAuthInd,CityName,AuthorizationGroup


}




