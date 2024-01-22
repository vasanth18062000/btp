sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
   
    function (Controller) {
        "use strict";

        return Controller.extend("ns.odataapi.controller.employeelist", {
            onInit: function () {

            },

           
                
         nextpage : function (oEvent) {


            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);

            // const oItem = oEvent.getSource();

            var employeeId =oEvent.getSource().getBindingContext().getProperty("A_BusinessPartner");
            oRouter.navTo("detail", {id: employeeId});


            var oRouter =sap.ui.core.UIComponent.getRouterfor(this);
                //     oRouter.navTo("detail",{"BusinessPartner":"11"})
				// employeedetail: window.decodeURIComponent(oItem.getBindingContext("detail/BusinessPartner").getPath().substr(1));
			
        // }
    


            // const oItem = oEvent.getSource();
			// const oRouter = this.getOwnerComponent().getRouter();
			oRouter.navTo("detail", {
				invoice: window.decodeURIComponent(oItem.getBindingContext("invoice").getPath().substr(1))
			});
                }

        });
    });
