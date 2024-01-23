sap.ui.define([
    "sap/ui/core/mvc/Controller"
    
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,
	
	Component) {
        "use strict";

        return Controller.extend("demo.controller.Customer", {
            onInit: function () {
              
            
            },
            Create: function()
            {
                console.log("customer");
                const oRouter = this.getOwnerComponent().getRouter();
                console.log(oRouter);
			    oRouter.navTo("Create");
            }
           

        });
    });
