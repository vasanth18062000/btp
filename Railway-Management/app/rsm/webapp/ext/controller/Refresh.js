sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Refresh: function(oEvent) {
            window.location.reload();
            MessageToast.show("Refreshing....");
            console.log("refresh");

            onchange.apply("asdfsalgjsfdlkj");
          

        },
    };
});
