sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Railways: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
