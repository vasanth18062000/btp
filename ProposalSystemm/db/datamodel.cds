namespace proposal.db;

entity PS_USER{
    key id                                :   Integer;
    emailId                               :   String(50);
    password                              :   String(50);
    createdBy                             :   String(50);
    createdAt                             :   Timestamp;
    modifiedBy                            :   String(50);
    modifiedAt                            :   Timestamp;
}

entity PS_VENDOR_ORG{
    key id                                :   Integer;
    name                                  :   String(100);
    logo                                  :   LargeBinary;
    website                               :   String;
    createdBy                             :   String(50);
    createdAt                             :   Timestamp;
    modifiedBy                            :   String(50);
    modifiedAt                            :   Timestamp;
    PS_VENDOR_ORG_CONTACT                 :   Association to many PS_VENDOR_ORG_CONTACT on PS_VENDOR_ORG_CONTACT.PS_VENDOR_ORG=$self;
    // PS_DETAILS                            :   Association to PS_DETAILS;
    
}

entity PS_VENDOR_ORG_CONTACT{
    key id                                :   Integer;
    addressLine1                          :   String(30);
    addressLine2                          :   String(50);
    addressLine3                          :   String(50);
    city                                  :   String(50);
    pincode                               :   String(50);
    state                                 :   String(50);
    country                               :   String(50);
    contact_person_1_mobileNumber         :   String(50);
    contact_person_1_telephoneNumber      :   String(50);
    contact_person_1_emailId              :   String(50);
    contact_person_2_mobileNumber         :   String(50);
    contact_person_2_telephoneNumber      :   String(50);
    contact_person_2_emailId              :   String(50);
    createdBy                             :   String(50);
    createdAt                             :   Timestamp;
    modifiedBy                            :   String(50);
    modifiedAt                            :   Timestamp;
    PS_VENDOR_ORG                     :   Association to PS_VENDOR_ORG;
    
}

entity PS_CUSTOMER_ORG{
    key id                                 :   Integer;
    name                                   :   String(100);
    logo                                   :   LargeBinary;
    website                                 :   String;
    createdBy                              :   String(50);
    createdAt                              :   Timestamp;
    modifiedBy                             :   String(50);
    modifiedAt                             :   Timestamp;
    PS_CUSTOMER_ORG_CONTACT                :   Association to many PS_CUSTOMER_ORG_CONTACT on PS_CUSTOMER_ORG_CONTACT.PS_CUSTOMER_ORG=$self;
    // PS_DETAILS                             :   Association to PS_DETAILS;
}

entity PS_CUSTOMER_ORG_CONTACT{
    key id                                 :   Integer;
    addressLine1                           :   String(30);
    addressLine2                           :   String(50);
    addressLine3                           :   String(50);
    city                                   :   String(50);
    pincode                                :   String(50);
    state                                  :   String(50);
    country                                :   String(50);
    contact_person_1_mobileNumber          :   String(50);
    contact_person_1_telephoneNumber       :   String(50);
    contact_person_1_emailId               :   String(50);
    contact_person_2_mobileNumber          :   String(50);
    contact_person_2_telephoneNumber       :   String(50);
    contact_person_2_emailId               :   String(50);
    createdBy                              :   String(50);
    createdAt                              :   Timestamp;
    modifiedBy                             :   String(50);
    modifiedAt                             :   Timestamp;
    PS_CUSTOMER_ORG                         :   Association to PS_CUSTOMER_ORG;
    
}