sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(Controller) {
      "use strict";
  
      return Controller.extend("my.carshowroom.controller.Varient", {
        onInit() {
          var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
          oRouter.getRoute("RouteCars").attachMatched(this.onObjectMatched, this); //Attach Router Pattern
        },
        onObjectMatched(oEvent) {
          var oArgs, oView;
          oArgs = oEvent.getParameter("arguments");
          oView = this.getView();
          oView.bindElement({
            path: "/cars(" + oArgs.invoicePath + ")",
            parameters: {
              expand: "passengerDetails,currencyDetails"
           }
          });
        }
      });
    }
  );