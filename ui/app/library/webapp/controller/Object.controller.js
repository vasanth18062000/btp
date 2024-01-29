sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox",
    "sap/m/MessageToast"
], (Controller,MessageBox,MessageToast) => {
    "use strict";

    return Controller.extend("library.controller.Object", {
        onInit() {
           // this.getRouterInfo().getRoute('ObjectView').attachPatternMatched(this._onRouteMatched,this);
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("Object").attachMatched(this.onObjectMatched, this);
        },

        onDlet:function(oEvent){
            console.log("delete");
            var oModel = this.getView().getModel();
            var id=this.getView().byId("id").getText();
            console.log("Delete "+id);
            
             oModel.remove("/Bookshop("+id+")",{
                 success: function () {
                     MessageToast.show("Deleted Successfully");
                     afterDelete();
                     //MessageBox.show("Updated",MessageBox.Icon.SUCCESS,"Customer Detail Updated");
                     
                 },
                 error: function (e) {
                     MessageToast.show("Something went wrong");
                    // MessageBox.show("Something went wrong",MessageBox.Icon.ERROR,"Customer Detail Not Updated");
                 }
             });
  
           },
        //   afterDelete:function(){
        //       const oRouter = this.getOwnerComponent().getRouter();
        //             oRouter.navTo("RouteListview");
        //   },

        onObjectMatched(oEvent) {
            var oArgs,oView;
            oArgs=oEvent.getParameter("arguments");
            oView=this.getView();
            console.log(oArgs.bookshop)
            oView.bindElement({
                 path:"/Bookshop("+oArgs.bookshop+")"
              
            });
        },
        onEdit:function(oEvent){
              
                console.log("Edit page");
                      var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                      var select=oEvent.getSource().getBindingContext().getProperty("id");
                      console.log(select);
                      oRouter.navTo("Edit",{id:select});
              },
              
             
           
        });
    });
