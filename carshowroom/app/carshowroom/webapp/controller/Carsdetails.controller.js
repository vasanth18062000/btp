sap.ui.define(
  [
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
  ],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller, Filter, FilterOperator) {
    "use strict";

    return Controller.extend("my.carshowroom.controller.Carsdetails", {
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
          // event:{

          //   dataRequster:function(){oView.setBusy(true)},
          //   dataReceived:function(){oView.setBusy(false)},
          // },
        });
      },
    });
  }
);
