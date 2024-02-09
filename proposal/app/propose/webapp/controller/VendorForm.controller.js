sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment"
], function (Controller, Fragment) {
    "use strict";

    return Controller.extend("ns.propose.controller.VendorForm", {
        onInit: function () {
            // Initialization code if needed
        },
        onSave:function(){
            console.log("hai");
            var payload ={
                Id:this.getView().byId("id").getValue(),
                carName:this.getView().byId("_IDGenLabel2").getValue(),
                manufactureDate:this.getView().byId("_IDLabel3").getValue()
            };
            console.log("hai");
            var oModel=this.getView().getModel();
            oModel.create("/Car",payload,{
                method:"POST",
                success:function(response){
                    MessageBox.show("New car is added",MessageBox.Icon.SUCCESS,"car is added..!");
                    this.clearForm();
                },
                error:function(error){
                    MessageBox.show("some error is occured",MessageBox.Icon.ERROR,"oops error..!");
                    this.clearForm();
                }
            });
        }
    });
});
