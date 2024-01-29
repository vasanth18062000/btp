sap.ui.define([
	"sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/m/MessageBox"
], function(
	Controller,
    
	MessageToast,MessageBox) {
	"use strict";

	return Controller.extend("library.controller.Edit", {
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
              path:"/Bookshop("+oArgs.id+")"
            });
          },
          update:function(){
           var oModel = this.getView().getModel();
           var id=this.getView().byId("id").getValue();
           console.log("update "+id);
           var oEntry = {
            id: this.getView().byId("id").getValue(),
            BookName: this.getView().byId("BookName").getValue(),
                       Author: this.getView().byId("Author").getValue(),
            Describtion: this.getView().byId("Describtion").getValue()
           };
           console.log(oEntry);
           oModel.update("/Bookshop("+id+")", oEntry, {
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
            oRouter.navTo("RouteListview"); 
        }
            
          
	});
});