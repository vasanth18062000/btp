sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.proposal.controller.Main", {
            onInit: function () {

            },

            clientCretation: function(){

                this.getOwnerComponent().getRouter().navTo("clientCreation");
            },

            proposalCreation : function(){

                this.getOwnerComponent().getRouter().navTo("proposalCreation");

            }
        
        
        });
    });
