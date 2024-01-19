sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/routing/History"
],
  
    function (Controller,History) {
        "use strict";

        return Controller.extend("ns.odataapi.controller.employeedetails", {
            onInit: function () {

            
            },

            onNavBack() {
                const oHistory = History.getInstance();
                const sPreviousHash = oHistory.getPreviousHash();
    
                if (sPreviousHash !== undefined) {
                    window.history.go(-1);
                } else {
                    // const oRouter = this.getOwnerComponent().getRouter();

                    var oRouter = sap.ui.core.UIComponent.getRouterFor(this);

                    oRouter.navTo("overview");
                }
            }


        });
    });