sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,MessageToast) {
        "use strict";

        return Controller.extend("ns.demoapp.controller.App", {
            onInit: function () {

            },

            save: function () {
                
                MessageToast.show("Data has been Stored");

            },

            // view: function(){

            //     MessageToast.show("Moving to view... Please wait...");

                
            // },

            view : function () {
                MessageToast.show("Moving to view...... Please wait..........");
                this.getRouter().navTo("employees");
               
            }
        });
        });
