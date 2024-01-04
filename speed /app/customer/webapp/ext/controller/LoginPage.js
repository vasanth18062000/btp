sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        loginPage: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
