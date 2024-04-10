sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
	"sap/ui/model/FilterOperator",
    "sap/ui/core/routing/History"
], function (Controller,Filter,FilterOperator,History) {
    "use strict";

    return Controller.extend("ns.ui5.controller.SupplierViewEdit", {
        onInit: function () {
            this.associated();
        },
        associated:function(){
            var oModel=this.getOwnerComponent().getModel("proposal-supplier");
            var oJSON=new sap.ui.model.json.JSONModel();
            var data;
            var data1;
            var final;
            oModel.read("/ProposalSupplier",{
				method: "GET",
                success:function(response){
                //    debugger;
//                     data1=response.PS_VENDOR_ORG_CONTACT.results[0];
// final=Object.assign({}, data, data1);
//                     console.log(final)
                    oJSON.setData(response);
                    this.getView().setModel(oJSON,"ven")
                    // this.time();
                                }.bind(this),
                                error:function(error){
                                }

                                
            }) 
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
        },
        EditToHomeButton:function(){
			const oHistory = History.getInstance();
			const sPreviousHash = oHistory.getPreviousHash();

			if (sPreviousHash !== undefined) {
				window.history.go(-1);
			} else {
				const oRouter = this.getOwnerComponent().getRouter();
				oRouter.navTo("Routepropose", {}, true);
			}
        }
    });
});
