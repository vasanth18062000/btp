sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        BackButton: function(oEvent) {
            // MessageToast.show("Custom handler invoked.");

            window.location.href="http://localhost:4004/product/webapp/index.html";
        }
    };
});
