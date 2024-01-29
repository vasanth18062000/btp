sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"


    ],
    function(BaseController) {
      "use strict";
  
      return BaseController.extend("ns.hanacrud.controller.create", {
        onInit: function() {
        },

            onCreate:function(){

                var oModel = this.getView().getModel();
                console.log(oModel);    
                //console.log(oModel1);
                // var oEntry = {
                //     customerId: this.getView().byId("customerId").getValue(),
                //     customerFirstName: this.getView().byId("customerFirstName").getValue(),
                //     customerLastName: this.getView().byId("customerLastName").getValue()


            //     var oList = this.byId("table001"),
            //     oBinding = oList.getBinding("items"),

            //     oContext = oBinding.create({

            //         "customerId" : "",
            //         "customerFirstName" : "",
            //         "customerLastName" : ""

            //     });
            //     console.log(oContext);

            //     this._setUIChanges(true);
                


                


               
                   
                   
                    
    
                


            //     console.log(oEntry);
            // //     oModel.create("/customer", oEntry, {
            // //         method: "POST",
            // //         success: function () {
            // //            // MessageToast.show("Added Successfully");
            // //             MessageBox.show("Success",MessageBox.Icon.SUCCESS,"Customer Detail Added");
            // //         },
            // //         error: function (e) {
            // //             MessageToast.show("Something went wrong");
            // //             MessageBox.show("Id Already Exist",MessageBox.Icon.ERROR,"Enter the valid details");
            // //         }
            // //     });


            // // },

            // // cancel:function(oEvent){

            // var fnSuccess = function () {

            //     this._setBusy(false);
            //     MessageToast.show(this._getText("Changes send"));
            //     this._setUIChanges(false);

            
                
            // }.bind(this);


            // var fnError = function(){

            //     this._setBusy(false);
            //     this._setUIChanges(false);
            //     MessageToast.error(oError.message)

            // }.bind(this);


       
                var ID = this.getView().byId("customerId").getValue();
                var FirstName = this.getView().byId("customerFirstName").getValue();
                var LastName = this.getView().byId("customerLastName").getValue();
                var data = {
                    ID: parseInt(ID),
                    FirstName: FirstName,
                    LastName: LastName
                };
                var odataModel = this.getView().getModel();
                odataModel.create("/customer", data, {
                    success: function(data, response){
                        MessageBox.success("Data successfully created");
                    },
                    error: function(error){
                        MessageBox.error("Error while creating the data");
                    }
                });



            }
      });
    }
  );
  