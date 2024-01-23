sap.ui.define([
    "sap/ui/core/mvc/Controller"
    
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("demo.controller.Create", {
            onInit: function () {


            },
            onCreate: function () {



                var oModel = this.getView().getModel();
                // var oModel = new ODataModel({
                //     serviceUrl: "/odata/v4/customer/"
                    
                // });
                
                

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
                        alert("success");
                    },
                    error: function (e) {
                        alert("error");
                    }
                });

                
            }



        });
    });