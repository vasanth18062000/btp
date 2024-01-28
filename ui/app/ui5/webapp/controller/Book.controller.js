sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ui5.controller.Book", {
            onInit: function () {

            },
            onPress:function(oEvent)
            {
                console.log("object page");
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var select=oEvent.getSource().getBindingContext().getProperty("ID");
                console.log(oRouter);
                oRouter.navTo("Object",{bookshop:select});
            },
                    
                
            
        });
    });
