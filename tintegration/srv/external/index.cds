using {API_BUSINESS_PARTNER as api} from './API_BUSINESS_PARTNER';

namespace com.ladera.index;


entity EmailAddress as projection on api.A_AddressEmailAddress{

    key AddressID,
    Person,
    OrdinalNumber,
    IsDefaultEmailAddress,
    EmailAddress,
    SearchEmailAddress,
    AddressCommunicationRemarkText,
    

}
entity BusinessPartner as projection on api.A_BusinessPartner {
    key BusinessPartner,
    Customer,
    Supplier,
    AcademicTitle,
    AuthorizationGroup,
    BusinessPartnerCategory,
    BusinessPartnerFullName,
    BusinessPartnerGrouping,
    BusinessPartnerName,
    BusinessPartnerUUID,
    CorrespondenceLanguage, 
   CreationDate,
    CreationTime,
    GenderCodeName,
    IsSexUnknown,
    IsNaturalPerson,
    IsMale,
    IsFemale,
    InternationalLocationNumber2,
    InternationalLocationNumber1,
    Industry,
    FirstName,
    to_BPCreditWorthiness,
    to_BPDataController,
    to_BPFiscalYearInformation,
    to_BuPaIndustry,
    to_BuPaIdentification
    






}

entity  bupaIndustry as projection on api.A_BuPaIndustry {
    key BusinessPartner,
    key IndustrySector,
    key IndustrySystemType,
    
    IsStandardIndustry,
    IndustryKeyDescription

    
}
entity bupaIdentyfication as projection on api.A_BuPaIdentification{

    Key BusinessPartner,
    key BPIdentificationType,
    key BPIdentificationNumber,
    
    BPIdentificationEntryDate,
    BPIdnNmbrIssuingInstitute,
    AuthorizationGroup,
    ValidityEndDate,
    ValidityStartDate,
    Region,
    Country,
   
   
}

entity bprelation as projection on api.A_BPRelationship{
    key RelationshipNumber,
     BusinessPartner2,
    BusinessPartner1,
    ValidityStartDate,
    ValidityEndDate
    

}
entity bpinteladdress as projection on api.A_BPIntlAddressVersion{
    key BusinessPartner,
    AddressID,
    AddressIDByExternalSystem,
    AddresseeFullName,
    AddressRepresentationCode
    }

    entity bpyearinformation as projection on api.A_BPFiscalYearInformation{
    key BusinessPartner,
    key BusinessPartnerFiscalYear,
    BPAnnualStockholderMeetingDate,
    BPBalanceSheetCurrency,
    


    }

    entity bpdatacontrol as projection on api.A_BPDataController{

key BusinessPartner,
         DataController,
        BPDataControllerIsDerived,
        DataControlAssignmentStatus,
        PurposeForPersonalData,
        PurposeDerived,
        PurposeType
    }
 entity bpcreditinformation as projection on api.A_BPCreditWorthiness{

key BusinessPartner,
 BusPartCreditStanding,
    BPCreditStandingComment,
    CreditRatingAgency,
    BPCrdtWrthnssAccessChkIsActive,
    BPForeclosureDate,
    BPForeclosureIsInitiated,
    BusinessPartnerBankruptcyDate,
    BusinessPartnerIsBankrupt,
    BusinessPartnerOathDate,
    BusinessPartnerIsUnderOath,
    BPLglProceedingInitiationDate,
    BPLegalProceedingStatus,
    BPCreditStandingRating,
    BPCreditStandingDate
    


    
 }
entity bpcontactaddress as projection on api.A_BPContactToAddress{

    key RelationshipNumber,
    BusinessPartnerCompany,
    AddressNumber,
    AddressID,
    ValidityEndDate,
    BusinessPartnerPerson

    }
    entity AddressFaxNo as projection on api.A_AddressFaxNumber{
        key AddressID,
        key Person,
        FaxCountry,
        IsDefaultFaxNumber,
        FaxNumber,
        FaxNumberExtension,
        InternationalFaxNumber,
        AddressCommunicationRemarkText,
        OrdinalNumber
    }

        entity AddressHomepage as projection on api. A_AddressHomePageURL{
            key AddressID,
            URLFieldLength,
            AddressCommunicationRemarkText,
            SearchURLAddress,
            IsDefaultURLAddress,
            ValidityStartDate,
            OrdinalNumber,
            WebsiteURL

        }
        





    