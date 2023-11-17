service AdminService {
    entity Customer {
        key ID : Integer;
        name  : String(111);
        emailId  : String(30);
        phoneNumber:Integer64;
        
    }
}