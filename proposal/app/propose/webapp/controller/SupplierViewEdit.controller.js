sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
], function (Controller,Filter,FilterOperator) {
    "use strict";

    return Controller.extend("ns.propose.controller.SupplierViewEdit", {
        onInit: function () {
            
        },
        onFilter(oEvent) {
            // build filter array
            const aFilter = [];
            const sQuery = oEvent.getParameter("query");
            if (sQuery) {
                aFilter.push(new Filter("name", FilterOperator.Contains, sQuery));           
             }
            // filter binding
            const oList = this.byId("idResponsiveTable");
            const oBinding = oList.getBinding("items");
            oBinding.filter(aFilter);
        },
        handleSelectionChange: function(oEvent) {
            var oSelectedItem = oEvent.getSource().getSelectedItem(),
                oRouter = sap.ui.core.UIComponent.getRouterFor(this),
                oContext = oSelectedItem.getBindingContext(), // Get the binding context of the selected item
                supplierId = oContext.getProperty("id"); // Get the ID of the selected item
            
            // Navigate to the next page with the selected client ID as a parameter
            oRouter.navTo("supplierUpdateForm", {
                SelectedItem: supplierId
            });
        }
    });
});
