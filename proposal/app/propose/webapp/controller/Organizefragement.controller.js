sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(BaseController) {
      "use strict";
  
      return BaseController.extend("ns.propose.controller.Organizefragement", {
        onInit: function() {
        },
          cvButton: function(){
            console.log("Vendor button");
            // Navigate to the proposal form
            // this.getOwnerComponent().getRouter().navTo("vendorclient");
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("vendorclient");
        }


          


        }
      });
    }
  );
