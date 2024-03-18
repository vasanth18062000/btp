sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("proposalapp.controller.Tile", {
            onInit: function () {
               

        },
        createProposal1 : function () {
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("RouteProposal");
          }
          


        });
    });
