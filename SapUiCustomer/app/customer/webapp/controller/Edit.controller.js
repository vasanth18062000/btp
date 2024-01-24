sap.ui.define([
	"sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/m/MessageBox"
], function(
	Controller,
    
	MessageToast,MessageBox) {
	"use strict";

	return Controller.extend("customer.controller.Edit", {
        onInit: function () {

            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
           oRouter.getRoute("Edit").attachMatched(this._onload,this);
        },
        _onload:function(oEvent){
            var oArgs,oView;
            oArgs=oEvent.getParameter("arguments");
            console.log(oArgs);
            oView=this.getView();
            oView.bindElement({
              path:"/Customer("+oArgs.Id+")"
            });
          },
          update:function(){
           var oModel = this.getView().getModel();
           var id=this.getView().byId("Id").getValue();
           console.log("update "+id);
           var oEntry = {
               Id: this.getView().byId("Id").getValue(),
               FirstName: this.getView().byId("FirstName").getValue(),
               LastName: this.getView().byId("LastName").getValue(),
               email: this.getView().byId("email").getValue(),
               phoneNumber: this.getView().byId("phoneNumber").getValue()
           };
           console.log(oEntry);
           oModel.update("/Customer("+id+")", oEntry, {
               success: function () {
                  // MessageToast.show("Added Successfully");
                   MessageBox.show("Updated",MessageBox.Icon.SUCCESS,"Customer Detail Updated");
               },
               error: function (e) {
                   MessageToast.show("Something went wrong");
                   MessageBox.show("Something went wrong",MessageBox.Icon.ERROR,"Customer Detail Not Updated");
               }
           });

            
        },
        onNavBack:function(){
            const oRouter = this.getOwnerComponent().getRouter();
            console.log(oRouter);
            oRouter.navTo("Customer"); 
        }
            
          
	});
});