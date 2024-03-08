namespace com.ladera.sap.btp.contract.proposal.systems;

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
    website                                 :   String;
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
//NOTE: CLIENT OR CALLED CUSTOMER
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


entity ProposalDetails{
    key id        :   String;
    referenceId   :   String;
    projectname   :   String;
    projectType   :   Association to  one ProjectType;
    proposedDate  :   Date;
    proposedBy    :   String;
    proposerRole  :   String;
    proposerDepartment: String;
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    mainSection:      Association to many MainSection on mainSection.proposalDetails=$self;

}



entity MainSection{
    key id        :   String;
    mainSectiontitle: String;
    textarea      :   LargeBinary;
    imagearea     :   LargeBinary;
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalDetails: Association to ProposalDetails;
    subsection    :   Association to many SubSection on subsection.parentSection=$self;

}
entity SubSection{
    key id        :   String;
    subSectiontitle:  String;
    textarea      :   LargeBinary;
    imagearea     :   LargeBinary;
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    parentSection :   Association to MainSection;

}

entity ProjectType{
    key id        :   Integer;
    projectType   :   String(30);

}


