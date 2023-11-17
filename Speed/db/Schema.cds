    using { cuid,managed,Currency,temporal,Country} from '@sap/cds/common';
    namespace com.utcl.db;

    entity Customer: managed{
    Key userId: Integer;
    password: String(50);
    firstName: String(50);
    lastName: String(50);
    name:String(50) = firstName || lastName;
    contactDetails: Composition of many ContactDetails on contactDetails.User=$self;
    dateOfBirth: Date;
    addresses: Composition of many Address on addresses.customer=$self;
    title: Association to one Title;
    carts: Composition of many Carts on carts.customer=$self;
    orders: Composition of many Order on orders.customer=$self;
    
    }

    entity ContactDetails:  managed{
    key Id: Integer;
    phoneNumber: String(50);
    emailId: String (50);
    User: Association to Customer;
    contactType: String enum{
        PRIMARY;
        SECONDARY;
    };
    }

    entity Address: managed{
    key Id:Integer;
    addressLine1: String(50);
    addressLine2: String(50);
    addressLine3: String(50);
    addressLine4: String(50);
    city: Association  to City;
    state: Association  to State;
    pincode: String(10);
    country: Country;
    customer:Association to Customer;
    addressType: Association to one AddressType;
    }

    entity City: managed{
    Key id: Integer;
    code:String(50);
    name: localized String(50);
    status: Boolean;
    }

    entity State: managed{
    Key id : Integer;   
        code:String(50);
    name: String(50);
    status: Boolean;
    }

    

    entity AddressType: managed{
    Key Id: Integer;
    status: Boolean;
    code: Integer;
    value: String (50);
    }

    entity Product: temporal, managed{
    Key id: Integer;
    name: localized String(50);
    productImage: String(50);
    description: localized String(50);
    price: Composition of many PriceRow on price.productId=$self;
    rating: Double;
    manufactureId: String (50);
        }

    entity PriceRow:managed{
        Key id: Integer;
    price: Double;
        currency: Currency;
    unit: String enum{
    KG;METER;GRAM;LENGTH;INCH;LITRE;
    };
productId:Association to Product;
     }

    entity Carts: managed{
    key id:Integer;
    cartCode: String(50);
    cartEntries: Composition of many CartEntry;
    customer: Association to Customer;
    totalPrice: Double;
    deliveryAddress: Association to Address;
    contactDetail: Association to ContactDetails;
    isActive: Boolean;
    paymentMode: String @assert.range enum{
    COD;PO;};

    }

    
    entity CartEntry: managed{
    key id:Integer;
    entryNumber:String(50);
    products: Association to Product;
    quantity: Integer;
    subTotal: Decimal(10,2);
    totalQuantity:Decimal(10,2);
    }

    entity Order: managed{
        Key id:Integer;
    orderCode:String(50);
    orderEntries:Composition of many OrderEntry;
    customer:Association to Customer;
    totalPrice:Double;
    billingAddress: Association to Address;
    deliveryAddress:Association to many Address  ;
    deliveryContact:Association to ContactDetails;
    shippingMethod:Association to one ShippingMethod;
    userMessage:localized String(200);
    paymentMode:  String enum{
        ONLINE;
        OFLINE;
    };

    }
    entity ShippingMethod: managed{
        Key id : Integer;
    shippingCode:String(50);
    name:String(50);
    notes:String(200);
    }

    entity OrderEntry: managed{
        Key id : Integer;
    entryNumber:String(50);
    products:Association to Product;
    quantity:Integer;
    subTotal:Decimal;
    totalQuantity:Integer;
    order: Association to Order;
    }

    entity Title: managed{
        Key id: Integer;
        code: String(50);
        value: String(50);



    }
    entity StockLevel: managed{
     key id: Integer;
    stockLevel:String @assert.range enum{
        INSTOCK;
        OUTOFSTOCK;
    };
    availability:Integer;
    threshold:Integer;
    location:String(50);
    }

    entity Warehouse: managed{
    key id:String;
    warehouseAddress:Association to Address;
    contactPerson:String(50);
    contactDetails:Association to many ContactDetails;
    stockatWarehouse:Association to many StockLevel;
    }

    entity StockLevelToWareHouse: managed{
    Key id: String;
    stock:Association  to one StockLevel;
    Warehose: Association to one Warehouse;


    }