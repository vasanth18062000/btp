using { API_BUSINESS_PARTNER as bp } from './API_BUSINESS_PARTNER';

namespace com.ladera.featuresentitybind;

entity BusinessPartners as projection on bp.A_BusinessPartner {
  key BusinessPartner as ID,
  BusinessPartnerFullName as businesspartnername,
  Customer as customer,
  Supplier as supplier,
  BusinessPartnerCategory as businesspartnercategory,
  AuthorizationGroup as authorizationgroup,
  AcademicTitle as academictitle

  
}

entity BPBank as projection on bp.A_BusinessPartnerBank{
  key BusinessPartner as ID,
  BankName as bankname,
  BankNumber as number
  
}



