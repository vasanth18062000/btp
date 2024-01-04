sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        checkOut: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
