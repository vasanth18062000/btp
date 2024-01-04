sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        showCart: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
