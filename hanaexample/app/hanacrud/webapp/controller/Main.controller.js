sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.hanacrud.controller.Main", {
            onInit: function () {

            },

            nextpage: function(oEvent){
                
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            var selectcustomerId = oEvent.getSource().getBindingContext().getProperty("customerId");
            oRouter.navTo("detail",{customerdetail:selectcustomerId}

            );

        },

        onCreateProduct:function(oEvent){

            // var oRouter = sap.ui.core.UIComponent.getRouterFor(this);

            const oRouter= this.getOwnerComponent().getRouter();
          
            oRouter.navTo("create");

        },

        onSearchCustomerId:function(){

                var oView=this.getView(),
                sValue =oView.byId("se1").getValue(), 
            oFilter = new Filter("customerId", FilterOperator.Contains, sValue);

                oView.byId("table001").getBinding("items").filter(oFilter, FilterType.Application); 


            }


        

        });
    });



   