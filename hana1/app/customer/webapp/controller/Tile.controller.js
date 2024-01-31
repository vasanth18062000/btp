sap.ui.define([
    "sap/ui/core/mvc/Controller"
    
], function(Controller) {
    "use strict";

 return Controller.extend("ns.customer.controller.Tile", {
  onInit: function() {
           
            },

            oncustomerpage: function(){
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("main");
            },

            createcustomer: function(){
               
                    var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
                    oRouter.navTo("create");


            }

 });
});