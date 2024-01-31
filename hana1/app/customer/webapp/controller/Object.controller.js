sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(Controller) {
      "use strict";
  
      return Controller.extend("ns.customer.controller.Object", {
        onInit: function() {

            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
             oRouter.getRoute("object").attachMatched(this.onObjectMatched, this);


        },

        onObjectMatched(oEvent) {
            
            var oArgs,oView;
            oArgs=oEvent.getParameter("arguments");
            oView=this.getView();
            oView.bindElement({
           
                 path:"/customer('"+oArgs.objectid+"')",


});
            },

            goToMainPage: function(){



            }


      });
    }
  );
  