sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
   
    function (Controller) {
        "use strict";

        return Controller.extend("ns.odataapi.controller.employeelist", {
            onInit: function () {

            },

           
                
         nextpage : function () {


            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            // var oRouter =sap.ui.core.UIComponent.getRouterfor(this);
                    oRouter.navTo("detail")
                }

        });
    });
