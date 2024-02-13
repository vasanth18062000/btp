sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller,MessageToast) {
    "use strict";

    return Controller.extend("ns.propose.controller.ClientView", {
        onInit: function () {
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("clientView").attachMatched(this.onObjectMatched, this); //Attach Router Pattern      
        },
        onObjectMatched(oEvent) {
          var oArgs,oView;
          oArgs=oEvent.getParameter("arguments");
          oView=this.getView();
          console.log(oArgs.clientId);
          oView.bindElement({
            path:"/ProposalCustomer("+oArgs.clientId+")"
        });

        }
    });
});
