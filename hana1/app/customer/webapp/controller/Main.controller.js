sap.ui.define([
    "sap/ui/core/mvc/Controller",

    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/model/FilterType",
    "sap/m/MessageToast",
    "sap/m/MessageBox"


],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,Filter,FilterOperator,FilterType,MessageBox,MessageToast) {
        "use strict";

        return Controller.extend("ns.customer.controller.Main", {
            onInit: function () {

                

            },

            nextpage: function(oEvent){

                var oRouter = sap.ui.core.UIComponent.getRouterFor(this);

                var selectcustomerId = oEvent.getSource().getBindingContext().getProperty("customerId")
                
                oRouter.navTo("object",{objectid:selectcustomerId});



            },

onCreateProduct: function () {

            
                var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
                
                oRouter.navTo("create");


            },

            onSearchCustomerId:function(){

                var oView=this.getView(),
                sValue =oView.byId("se1").getValue(), 
            oFilter = new Filter("customerId", FilterOperator.Contains, sValue);

                oView.byId("table001").getBinding("items").filter(oFilter, FilterType.Application); 


            },


onDeleteProduct: function(){





                var oContext,
		        oSelected = this.byId("table001").getSelectedItem(),sUserName;

                console.log(oSelected);
 
		    if (oSelected) {
		        oContext = oSelected.getBindingContext();
		        sUserName = oContext.getProperty("customerId");
		        oContext.delete().then(function () {
		            MessageToast.show(this._getText("deletionSuccessMessage", sUserName));

                    
		        }.bind(this), function (oError) {
		            this._setUIChanges();
		            if (oError.canceled) {
		                MessageToast.show(this._getText("deletionRestoredMessage", sUserName));
		                return;
		            }
		            MessageBox.error(oError.message + ": " + sUserName);
		        }.bind(this));
		        this._setUIChanges(true);
		    }


            // var Id = this.getView().byId("customerId").getText();
            // var oModel = this.getView().getModel();

            // console.log(Id);

            // oModel.remove("/customer("+customerId+")",{

            
            
            // success: function(){

            //         MessageToast.show("user deleted successfully..");


            // },

            // error: function(){

            //     MessageToast.show("something went wrong...");
            // }


            // }            
            // )


            },

onRefresh: function(){

                MessageBox.show("Fetching New Data..... Please Wait......")

                var table =this.getView().byId("table001").getModel()

                window.location.reload(table);
            },

onOpenUpdateDialog: function(){

                /*update operation*/

                // oSelected = this.byId("table001").getSelectedItem();
//    var oModel = this.getView().getModel();

        // var oContext,
        oSelectedforedit = this.byId("table001").getSelectedItem();
        console.log(oSelectedforedit);
   var oContext = {};

   oContext.customerId = this.getView().byId("tex01").getValue();
   oContext.customerFirstName = this.getView().byId("tex02").getValue();
   oContext.customerLastName = this.getView().byId("tex03").getValue();
  

   oSelectedforedit.update("/customer('"+oContext.customerId+"')", oEntry, {

    success: function(data) {
     alert("success");
    },
    error: function(e) {
     alert("error");
    }
   });




            }   
        });
    });
