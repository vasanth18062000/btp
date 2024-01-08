sap.ui.define([
	"sap/ui/demo/nav/controller/BaseController"
], function (BaseController) {
	"use strict";

	return BaseController.extend("ns.demoapp.controller.View", {

		onListItemPressed : function(oEvent){
			var oItem, oCtx;

			oItem = oEvent.getSource();
			oCtx = oItem.getBindingContext();

			this.getRouter().navTo("view",{
				employeeId : oCtx.getProperty("EmployeeID")
			});

		}
	});

});