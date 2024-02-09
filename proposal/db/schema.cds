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

