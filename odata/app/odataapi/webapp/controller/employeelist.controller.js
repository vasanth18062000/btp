sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
   
    function (Controller) {
        "use strict";

        return Controller.extend("ns.odataapi.controller.employeelist", {
            onInit: function () {

            },

            onInit: function () {

            },

            nextpage: function(oEvent){
                //const oItem = oEvent.getSource();
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            var selectedItemSupplierId = oEvent.getSource().getBindingContext().getProperty("ETag");
            oRouter.navTo("detail",{invoice:selectedItemSupplierId}

            );

        }

           
            

        });
    });
