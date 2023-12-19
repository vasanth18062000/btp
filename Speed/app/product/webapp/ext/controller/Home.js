sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Home: function(oEvent) {
           
           if (confirm("Are you sure you want to go to the Home Page?"))
           {
            window.location.href="http://localhost:4004/product/webapp/index.html";
        }
        else{
            // alert("else")
            window.location.reload();
            // alert("else")

        }
            // else{window.location.href="http://localhost:4004/product/webapp/index.html/Product"}
        }
    };
});
