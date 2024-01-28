sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ui52.controller.View", {
            onInit: function () {
                
            },
            ObjectPage:function(oEvent)
            {
                console.log("object page");
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var select=oEvent.getSource().getBindingContext().getProperty("title");
                console.log(select);
                oRouter.navTo("Object",{bookshop:select});
            },




        });
    });
