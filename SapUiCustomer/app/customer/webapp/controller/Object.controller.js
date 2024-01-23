sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/ui/core/routing/History"
    ],
    function(BaseController,History) {
      "use strict";
  
      return BaseController.extend("customer.controller.Object", {
        onInit: function() {
           var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
           oRouter.getRoute("Object").attachMatched(this._onload,this);
        },
        _onload:function(oEvent){
          var oArgs,oView;
          oArgs=oEvent.getParameter("arguments");
          console.log(oArgs);
          oView=this.getView();
          oView.bindElement({
            path:"/Customer("+oArgs.Id+")"
          });
        },
        onNavBack() {
          const oHistory = History.getInstance();
          const sPreviousHash = oHistory.getPreviousHash();
    
          if (sPreviousHash !== undefined) {
            window.history.go(-1);
          } else {
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("Customer", {}, true);
          }
        }
       
      });
    }
  );
  