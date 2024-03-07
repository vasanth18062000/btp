sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller,MessageToast) {
    "use strict";
    var vendorI;

    return Controller.extend("ns.propose.controller.VendorView", {
        
        onInit: function () {
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("supplierView").attachMatched(this.onObjectMatched, this); //Attach Router Pattern      
        },
        onObjectMatched(oEvent) {
          var oArgs,oView;
          oArgs=oEvent.getParameter("arguments");
          oView=this.getView();
          console.log(oArgs.supplierId);
          vendorI=oArgs.supplierId;
          oView.bindElement({
            path:"/ProposalSupplier("+oArgs.supplierId+")"
        });
        },
        onBack:function(){
            console.log(vendorI);  
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            // var id=this.getView().byId("id").getValue();
            // console.log(id);
            oRouter.navTo("supplierUpdateForm",{
                SelectedItem: vendorI
            });
        },
        onSaveandContinue:function(){
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("proposalview");

        }
    });
});
