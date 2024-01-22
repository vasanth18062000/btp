sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(BaseController) {
      "use strict";
  
      return BaseController.extend("ns.odataapi.controller.App", {
        onPress: function(oEvent) {
          var oItem = oEvent.getSource(); //Get the Selected Item
          var oRouter = sap.ui.core.UIComponent.getRouterFor(this); //Get Hold of Router
          //Navigate to Detail Page with Selected Item Binding Context
          oRouter.navTo("detail", {
            employeePath: oItem.getBindingContext("view").getPath().substr(1)
          });
        }
      });
    }
  );
  