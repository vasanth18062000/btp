sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
  "use strict";

  return Controller.extend("my.carshowroom.controller.Varient", {
    onInit() {
      var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
      oRouter.getRoute("RouteCars").attachMatched(this.onObjectMatched, this); //Attach Router Pattern
    },
    onObjectMatched(oEvent) {
      var oArgs, oView, oId;
      oArgs = oEvent.getParameter("arguments");
      (oView = this.getView()), (oId = oArgs.invoicePath);
      oView.bindElement({
        path: "/cars(" + oId + ")",
        parameters: {
          expand: "engineDetails,seatsDetails,currencyDetails",
        },
      });
    },

    onOpenDialog() {
      // create dialog lazily
      this.pDialog ??= this.loadFragment({
        name: "my.carshowroom.view.TubeDialog",
      });

      this.pDialog.then((oDialog) => oDialog.open());
    },
    onCloseDialog: function () {
      this.byId("TubeDialog").close();
    },
  });
});
