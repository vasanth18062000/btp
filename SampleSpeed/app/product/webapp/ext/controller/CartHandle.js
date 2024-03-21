sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        addToCart: function(oEvent) {
            MessageToast.show("Product added to your shopping cart");
        },
        carthome: function() {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
