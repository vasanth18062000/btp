sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Cart: function(oEvent) {
            MessageToast.show("Custom handler invoked");
        }
    };
});
