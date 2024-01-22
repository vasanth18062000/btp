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

    return Controller.extend("my.carshowroom.controller.Cars", {
      onInit: function () {},

      onFilterCar(oEvent) {
        // build filter array
        const aFilter = [];
        const sQuery = oEvent.getParameter("query");
        if (sQuery) {
          aFilter.push(new Filter("carName", FilterOperator.Contains, sQuery));
        }

        // filter binding
        const oList = this.byId("_IDGenTable1");
        const oBinding = oList.getBinding("items");
        oBinding.filter(aFilter);
      },

      // onPress(oEvent) {
      //   console.log("hii iam cars");
      //   const oRouter = this.getOwnerComponent().getRouter();
      //   oRouter.navTo("RouteCars");
        
      // },

      onPress(oEvent) {
      
        var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
        var SelectedItem=oEvent.getSource().getBindingContext().getProperty("ID");
        oRouter.navTo("RouteCars", { invoicePath: encodeURIComponent(SelectedItem)   });
        }
  });
  }
);
