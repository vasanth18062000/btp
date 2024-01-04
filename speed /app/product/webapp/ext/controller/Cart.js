sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        cart: function(oEvent) {
            MessageToast.show("Carts a");
            window.location.href="https://port4004-workspaces-ws-8gd2r.us10.trial.applicationstudio.cloud.sap/$fiori-preview/Cart/Cart#preview-app&/?sap-iapp-state=TASN4WRE0IWAC3ND2DXTPFTY5WF1RFFXKWYGEA8SW";
        }
    };
});
