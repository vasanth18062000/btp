sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        cart: function(oEvent) {
            MessageToast.show("Product added to cart");

           

        }
    };
});
