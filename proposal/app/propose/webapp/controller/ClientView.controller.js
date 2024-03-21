sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller,MessageToast) {
    "use strict";
    var cllientI;
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
            cllientI=oArgs.clientId;
            oView.bindElement({
              path:"/ProposalCustomer("+oArgs.clientId+")"
          });
  
          },
        onBack:function(){
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("clientUpdateForm",{
                SelectedItem:cllientI
            });
 
        },
        onSaveandContinue:function(){
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("Routepropose");

        },

    });
});
