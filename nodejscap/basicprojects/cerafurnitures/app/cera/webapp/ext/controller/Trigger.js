sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onTrigger: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
