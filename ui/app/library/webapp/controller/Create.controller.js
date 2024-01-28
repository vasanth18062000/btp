sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/m/MessageBox"
    
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,
	MessageToast,MessageBox) {
        "use strict";

        return Controller.extend("library.controller.Create", {
            onInit: function () {


            },
            onCreate: function () {
                var oModel = this.getView().getModel();
                console.log(oModel);
                //console.log(oModel1);
                var oEntry = {
                    id: this.getView().byId("id").getValue(),
                    BookName: this.getView().byId("BookName").getValue(),
                    Price: this.getView().byId("Price").getValue(),
                    Author: this.getView().byId("Author").getValue(),
                    Describtion: this.getView().byId("Describtion").getValue()
                };
                console.log(oEntry);
                oModel.create("/Bookshop",oEntry,{
                    method: "POST",
                    success: function () {
                       // MessageToast.show("Added Successfully");
                        MessageBox.show("Success",MessageBox.Icon.SUCCESS,"Book Detail Added");
                    },
                    error: function (e) {
                        MessageToast.show("Something went wrong");
                        MessageBox.show("Id Already Exist",MessageBox.Icon.ERROR,"Book Not Added");
                    }
                });

                
            }



        });
    });