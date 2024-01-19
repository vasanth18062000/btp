sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("my.carshowroom.controller.Carsdetails", {
            onInit: function () {

            },

            onPress: function(){
                var oRouter = sap.ui.UIComponent.getRouterFor(this);

                oRouter.navTo("RouteCars", {});
            }
        
        });
    });