sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        back: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
            window.location.href="https://port4004-workspaces-ws-866zt.us10.trial.applicationstudio.cloud.sap/product/webapp/index.html";
        }
    };
});



