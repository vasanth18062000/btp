sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
    
], function (Controller,MessageToast) {
    "use strict";

    return Controller.extend("ns.propose.controller.SupplierView", {
        onInit: function () {
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("supplierView").attachMatched(this.onObjectMatched, this); //Attach Router Pattern      
        },
        onObjectMatched(oEvent) {
          var oArgs,oView;
          oArgs=oEvent.getParameter("arguments");
          oView=this.getView();
          console.log(oArgs.supplierId);
          oView.bindElement({
            path:"/ProposalSupplier("+oArgs.supplierId+")"
        });

        }
    });
});
