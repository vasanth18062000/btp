sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        BackButton: function(oEvent) {
            window.location="http://localhost:4004/car/webapp/index.html"
        }
    };
});
