sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/ui/core/routing/History",
        "sap/m/MessageToast",
        "sap/m/MessageBox"
    ],
    function(BaseController,History,
      MessageToast,MessageBox) {
      "use strict";
  
      return BaseController.extend("customer.controller.Object", {
        onInit: function() {
           var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
           oRouter.getRoute("Object").attachMatched(this._onload,this);
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
        onNavBack() {
          const oHistory = History.getInstance();
          const sPreviousHash = oHistory.getPreviousHash();
    
          if (sPreviousHash !== undefined) {
            window.history.go(-1);
          } else {
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("Customer", {}, true);
          }
        },
        onEdit:function(oEvent){
          // var Id=this.getView().byId("Id").getValue();
          // console.log("data"+Id);
          // const oRouter = this.getOwnerComponent().getRouter();
			    // oRouter.navTo("Edit");
          console.log("Edit page");
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var select=oEvent.getSource().getBindingContext().getProperty("Id");
                console.log(select);
                oRouter.navTo("Edit",{Id:select});
        },
        onDelete:function(){
          console.log("delete");
          var oModel = this.getView().getModel();
          var id=this.getView().byId("Id").getText();
          console.log("Delete "+id);
          
           oModel.remove("/Customer("+id+")",{
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
        afterDelete:function(){
            const oRouter = this.getOwnerComponent().getRouter();
			      oRouter.navTo("Customer");
        }
        

      });
    }
  );
  