sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';
    

    return {
        carts: function(oEvent) {
            MessageToast.show("Moving to cart");
            window.location="http://localhost:4004/cart/webapp/index.html";
            console.log('button clicked');
        }
    };
});
