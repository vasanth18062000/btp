
service reflectService {
 
      entity Mobile {
        key ID:Integer;
        brand:String;
        model:String;
        price:Double;
        earpods: Association to many HeadPhones on earpods.mobile=$self;
      }

      entity HeadPhones {
        mobile:Association to one Mobile;
        key ID:Integer;
        brand:String;
        model:String;
        price:Double;
      }
}