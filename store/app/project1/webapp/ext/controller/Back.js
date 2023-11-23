sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        back: function(oEvent) {
            window.location.href = "http://localhost:4004/project1/webapp/index.html";

            // MessageToast.show("");
        }
    };
});
