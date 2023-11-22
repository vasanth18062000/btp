sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Refresh: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
