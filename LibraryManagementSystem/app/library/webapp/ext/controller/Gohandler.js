sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        gohandlermethod: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
