namespace com.ladera.sap.btp.contract.proposal.systems;

entity PS_USER{
    key id      :   Integer;
    emailId     :   String(50);
    password    :   String(50);
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    }

entity PS_VENDOR_ORG{
    key id      :   Integer;
    name        :   String(100);
    logo        :   LargeBinary;
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    proposalOwnerContact: Association to many PS_VENDOR_ORG_CONTACT on proposalOwnerContact.proposalOwner=$self;
    proposalDetails     : Association to PS_DETAILS;
    
}
entity PS_VENDOR_ORG_CONTACT{
    key id      :   Integer;
    doorNo      :   String(10);
    streetName  :   String(50);
    city        :   String(50);
    pincode     :   String(50);
    state       :   String(50);
    country     :   String(50);
    
    contact_person_1_mobileNumber  :   String(50);
    contact_person_1_telephoneNumber:  String(50);
    contact_person_1_emailId       :   String(50);
    
    contact_person_2_mobileNumber  :   String(50);
    contact_person_2_telephoneNumber:  String(50);
    contact_person_2_emailId       :   String(50);
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    proposalOwner:  Association to PS_VENDOR_ORG;
    
}
//NOTE: CLIENT OR CALLED CUSTOMER
entity PS_CUSTOMER_ORG{
    key id       :   Integer;
    name         :   String(100);
    logo         :   LargeBinary;
    createdBy    :   String(50);
    createdAt    :   Timestamp;
    modifiedBy   :   String(50);
    modifiedAt   :   Timestamp;
    proposalClientContact :   Association to many PS_CUSTOMER_ORG_CONTACT on proposalClientContact.proposalClient=$self;
    proposalDetails       :   Association to PS_DETAILS;
}
entity PS_CUSTOMER_ORG_CONTACT{
    key id        :   Integer;
    addressLine1        :   String(30);
    addressLine2   :   String(50);
    
    addressLine3  :   String(50);
    city          :   String(50);
    pincode       :   String(50);
    state         :   String(50);
    country       :   String(50);
    contact_person_1_mobileNumber  :   String(50);
    contact_person_1_telephoneNumber:  String(50);
    contact_person_1_emailId       :   String(50);
    
    contact_person_2_mobileNumber  :   String(50);
    contact_person_2_telephoneNumber:  String(50);
    contact_person_2_emailId       :   String(50);
    
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalClient:   Association to PS_CUSTOMER_ORG;
    
}

entity PS_DETAILS{
    key id        :   Integer;
    referenceId   :   String;
    projectName   :   String;
    projectType   :   Association to  one PS_PROJECT_TYPE;
    proposedDate  :   Date;
    proposedBy    :   String;
    proposerRole  :   String;
    proposerDepartment: String;
    
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    mainSection   :   Association to many PS_MAIN_SECTION on mainSection.proposalDetails=$self;
    proposalOwner :   Association to PS_VENDOR_ORG ;
    proposalClient:   Association to PS_CUSTOMER_ORG;
}
//sap_btp_rfpn
//sap_btp_rfpui
//sap_btp_rfpj
//sap_btp_rfpj_temp

entity PS_MAIN_SECTION{
    key id        :   Integer;
    title: String;
    description      :   String; //text area
    section_image     :   LargeBinary;
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalDetails:  Association to PS_DETAILS;
    section_table     :LargeBinary ;
    subsection    :   Association to many PS_SUB_SECTION on subsection.sub_subsection=$self;

}
entity PS_SUB_SECTION{
   key id        :   Integer;
    sub_title: String;
    sub_description      :   String; //text area
    sub_section_image     :   LargeBinary;
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalDetails:  Association to PS_DETAILS;
    sub_section_table     :LargeBinary ;
    sub_subsection    :   Association to one PS_MAIN_SECTION;

}

entity PS_PROJECT_TYPE{
    key id        :   Integer;
    projectType   :   String(30);

}
