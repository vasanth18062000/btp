sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
    
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,
	MessageToast) {
        "use strict";

        return Controller.extend("customer.controller.Create", {
            onInit: function () {


            },
            onCreate: function () {
                var oModel = this.getView().getModel();
                console.log(oModel);
                //console.log(oModel1);
                var oEntry = {
                    Id: this.getView().byId("Id").getValue(),
                    FirstName: this.getView().byId("FirstName").getValue(),
                    LastName: this.getView().byId("LastName").getValue(),
                    email: this.getView().byId("email").getValue(),
                    phoneNumber: this.getView().byId("phoneNumber").getValue()
                };
                console.log(oEntry);
                oModel.create("/Customer", oEntry, {
                    method: "POST",
                    success: function () {
                        MessageToast.show("Added Successfully");
                    },
                    error: function (e) {
                        MessageToast.show("Something went wrong");
                    }
                });

                
            }



        });
    });