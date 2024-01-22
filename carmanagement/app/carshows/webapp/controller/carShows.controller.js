sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.carshows.controller.carShows", {
            onInit: function () {

            },
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
            onPress(oEvent) {
                // var oItem = oEvent.getSource(); //Get the Selected Item
                // var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var SelectedItem=oEvent.getSource().getBindingContext().getProperty("Id");
                oRouter.navTo("detail", { invoicePath: SelectedItem });
                }
        });
    });
