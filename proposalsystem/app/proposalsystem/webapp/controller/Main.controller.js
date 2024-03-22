sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.proposalsystem.controller.Main", {
            onInit: function () {

            },

            clientCretation: function () {

                this.getOwnerComponent().getRouter().navTo("clientCretation");
            },

            proposalCreation: function(){
                this.getOwnerComponent().getRouter().navTo("proposalform");
            }
        });
    });
