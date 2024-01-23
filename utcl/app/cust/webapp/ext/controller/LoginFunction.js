sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        login: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
