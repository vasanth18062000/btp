sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("library.controller.Listview", {
            onInit: function () {

            },

            onSbmit: function()
            {
                console.log("Creatted");
                const oRouter = this.getOwnerComponent().getRouter();
                console.log(oRouter);
			    oRouter.navTo("Create");
            },
            onPress:function(oEvent)
            {
                console.log("object page");
                var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
                var select=oEvent.getSource().getBindingContext().getProperty("id");
                console.log(select);
                oRouter.navTo("Object",{bookshop:select});
            },

        });
    });
