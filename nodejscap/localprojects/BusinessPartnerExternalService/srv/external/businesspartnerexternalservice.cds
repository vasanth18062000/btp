using { API_BUSINESS_PARTNER as bp } from './API_BUSINESS_PARTNER';

namespace com.ladera.featuresentitybind;

entity Customers as projection on bp.A_BusinessPartner {
  key BusinessPartner as ID,
  BusinessPartnerFullName as name
}

entity  Address as projection on bp.A_BusinessPartner {
  key BusinessPartner as ID,
  BusinessPartnerFullName as name
}



