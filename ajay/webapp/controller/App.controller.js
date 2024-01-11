sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("sap.com.ajay.controller.App", {
            onInit: function () {
                
            },
            ajaylogin: function() {
                MessageToast.show("Login page loading...");

                this.getView().byId("container2").setVisible(true);
            },

            clickme : function(){

                MessageToast.show("Clicked");

                this.getView().byId("image0").setVisible(true);

            },

            signup: function(){

                MessageToast.show("sign up successful");
            }
            
        });
    });
