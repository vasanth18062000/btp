using{managed} from '@sap/cds/common';
namespace SampleSpeed.db;

entity Product:managed{
    key id:Integer;
    code:String(50);
    name:localized String(50);
    productImage:String(1000);
    description:localized String(50);
    price:Double;
    rating:Double;
    cart:Association to Cart;
}

entity Cart:managed{
    key id:Integer64;
    cartCode:String(50);
    product:Association to many Product;
    totalPrice:Double;
    paymentMode:String @assert.range enum{
                     COD;PO;};
    isActive:Boolean;
}


