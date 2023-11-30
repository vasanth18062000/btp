sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        back01controller: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
