sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        addToCart: function(oEvent) {
            MessageToast.show("Added to Cart");
            
        }
    };
});
