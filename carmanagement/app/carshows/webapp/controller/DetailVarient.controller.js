sap.ui.define([
	"sap/ui/core/mvc/Controller"
], (Controller) => {
	"use strict";

	return Controller.extend("ns.carshows.controller.Detail", {
		onInit() {
          },
          oNavButton:function(oEvent){
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("RoutecarShows");
          }
                        
	});
});