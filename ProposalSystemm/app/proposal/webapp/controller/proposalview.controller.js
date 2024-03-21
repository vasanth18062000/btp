sap.ui.define([
    "sap/ui/core/mvc/Controller"
], function (Controller) {
    "use strict";

    return Controller.extend("ns.proposal.controller.proposalview", {
        onInit: function () {
            
        },

        onNavOrganization: function(){
            console.log("Vendor button clicked!");
            this.getOwnerComponent().getRouter().navTo("Vendor");
        },
        onNavClientOrganization:function(){
            console.log("Client button clicked!");
            this.getOwnerComponent().getRouter().navTo("Client");
        }
    });
});