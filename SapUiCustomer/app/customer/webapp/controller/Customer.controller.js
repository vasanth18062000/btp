sap.ui.define([
    "sap/ui/core/mvc/Controller",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, Filter, FilterOperator) {
        "use strict";

        return Controller.extend("customer.controller.Customer", {
            onInit: function () {

            },
            Create: function()
            {
                console.log("customer");
                const oRouter = this.getOwnerComponent().getRouter();
                console.log(oRouter);
			    oRouter.navTo("Create");
            },
            ObjectPage:function(oEvent)
            {
                console.log("object page");
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var select=oEvent.getSource().getBindingContext().getProperty("Id");
                console.log(select);
                oRouter.navTo("Object",{Id:select});
            },
            onFiltercustomer:function(oEvent){

            }

        });
    });
