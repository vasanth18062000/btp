namespace com.ladera.proposalsystemmodels;

entity LoginCredentials{
    key id      :   Integer;
    organizationName:String(30);
    emailId     :   String(50);
    password    :   String(50);
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    }

entity ProposalOwner{
    key id      :   Integer;
    name        :   String(100);
    logo        :   LargeBinary;
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    proposalOwnerContact: Association to many ProposalOwnerContact on proposalOwnerContact.proposalOwner=$self;
    proposalDetails     : Association to ProposalDetails;
    
}
entity ProposalOwnerContact{
    key id      :   Integer;
    doorNo      :   String(10);
    streetName  :   String(50);
    city        :   String(50);
    pincode     :   String(50);
    state       :   String(50);
    Country     :   String(50);
    mobileNumber:   String(50);
    telephoneNumber:String(50);
    emailId     :   String(50);
    password    :   String(50);
    createdBy   :   String(50);
    createdAt   :   Timestamp;
    modifiedBy  :   String(50);
    modifiedAt  :   Timestamp;
    proposalOwner:  Association to ProposalOwner;
    
}
entity ProposalClient{
    key id       :   Integer;
    name         :   String(100);
    logo         :   LargeBinary;
    createdBy    :   String(50);
    createdAt    :   Timestamp;
    modifiedBy   :   String(50);
    modifiedAt   :   Timestamp;
    proposalClientContact :   Association to many ProposalClientContact on proposalClientContact.proposalClient=$self;
    proposalDetails       :   Association to ProposalDetails;
}
entity ProposalClientContact{
    key id        :   Integer;
    doorNo        :   String(10);
    streetName    :   String(50);
    city          :   String(50);
    pincode       :   String(50);
    state         :   String(50);
    Country       :   String(50);
    mobileNumber  :   String(50);
    telephoneNumber:  String(50);
    emailId       :   String(50);
    password      :   String(50);
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalClient:   Association to ProposalClient;
    
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
    proposalOwner :   Association to ProposalOwner ;
    proposalClient:   Association to ProposalClient;

}

entity MainSection{
    key id        :   String;
    mainSectiontitle: String;
    textarea      :   Binary(5000);
    imagearea     :   Binary(5000);
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    proposalDetails: Association to ProposalDetails;
    tablearea     :   Association to many MainTableFields on tablearea.mainSection=$self ;
    subsection    :   Association to many SubSection on subsection.parentSection=$self;

}
entity SubSection{
    key id        :   String;
    subSectiontitle:  String;
    textarea      :   Binary(5000);
    imagearea     :   Binary(5000);
    createdBy     :   String(50);
    createdAt     :   Timestamp;
    modifiedBy    :   String(50);
    modifiedAt    :   Timestamp;
    parentSection :   Association to MainSection;
    tablearea     :   Association to many MainTableFields on tablearea.subSection=$self ;

}

entity ProjectType{
    key id        :   Integer;
    projectType   :   String(30);

}

entity MainTableFields{
    field1        :   String;
    field2        :   String;
    field3        :   String;
    field4        :   String;
    field5        :   String;
    mainSection   :   Association to one MainSection;
    subSection    :   Association to one SubSection;
}