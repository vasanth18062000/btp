sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Back: function(oEvent) {
            window.location.href="http://localhost:4004/phonenumber/webapp/index.html#/?layout=OneColumn";
        }
    };
});
