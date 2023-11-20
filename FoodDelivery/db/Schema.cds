using{cuid,managed,sap.common.CodeList}from '@sap/cds/common';
namespace com.fooddelivery.db;


entity Customer : managed{
    key id : Integer;
    firstName : String;
    lastName : String;
    phoneNumber : PhoneNumber;
    emailId : String;
    status : Association to CustomerStatus;
    address : Association to Address;
    relationOrderToCustomer : Association to many Order on relationOrderToCustomer.relationCustomerToOrder = $self;
}

entity CustomerStatus : CodeList{
    key statusCode : String enum{
        ACTIVE = 'A';
        INACTIVE = 'IA';
    };
}

entity Address : managed{
    key id : Integer;
    doorNo : String;
    streetName : String;
    landMark : String;
    city : String;
    district : String;
    pincode : String;
    state : String;
    country : String;
}

entity Hotel : managed {
    key id : Integer;
    name : Association to HotelName;
    location : String;
    category : Association to Category;
    menu : String;
    price : Double;
    relationOrderToHotel : Association to many Order on relationOrderToHotel.relationHotelToOrder = $self;
    relationExecutiveToHotel : Association to many DeliveryExecutive on relationExecutiveToHotel.relationHotelToExecutive = $self;
}

entity HotelName : CodeList{
    key hotelCode : String enum{
    URBANTREAT = 'UT';
    ATTISQUARE = 'AS';
    EATANDMEAT = 'EM';
    A2B = 'AB';
    NOORUS = 'N';
    };
}

entity Category : CodeList {
    key categoryCode : String enum{
        VEG = 'V';
        NONVEG = 'NV';
        VEGAN = 'VN';
    }; 
}

entity Order : managed{
    key id : Integer;
    orderNumber : String;
    orderDateTime : DateTime;
    price : Double;
    paymentType : String enum{
        ONLINE;
        CASHONDELIVERY;
    };
    orderStatus : Association to OrderStatus;
    relationCustomerToOrder : Association to Customer;
    relationHotelToOrder : Association to Hotel;
}

entity OrderStatus : CodeList{
    key orderStatusCode : String enum{
        ORDERED = 'OD';
        DELIVERY = 'DY';
        CANCELLED = 'CD';
    };
}

entity DeliveryExecutive : managed{
    key id : Integer;
    name : String;
    phoneNumber : PhoneNumber;
    gender : Association to Gender;
    relationHotelToExecutive : Association to Hotel;
}

entity Gender : CodeList{
    key genderCode : String enum{
        MALE = 'M';
        FEMALE = 'F';
        OTHERS = 'O';
    };
}

type PhoneNumber : String;


