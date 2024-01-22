sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/routing/History"
],
  
    function (Controller,History) {
        "use strict";

        return Controller.extend("ns.odataapi.controller.employeedetails", {
            onInit: function () {
                var oRouter = sap.ui.core.UIComponent.getRouterFor(this); //Get Hold of Router
                oRouter.getRoute("detail").attachPatternMatched(this._onObjectMatched, this); //Attach Router Pattern
            
            },

            _onObjectMatched: function(oEvent) {
                //Bind the Context to Detail View
                this.getView().bindElement({
                  path: "/" + oEvent.getParameter("arguments").employeePath,
                  model: "view"
                });
              },

            onNavBack: function() {
                //Navigation Back
                var oHistory = sap.ui.core.routing.History.getInstance();
                var sPreviousHash = oHistory.getPreviousHash();
                window.history.go(-1);
              


        });
    });