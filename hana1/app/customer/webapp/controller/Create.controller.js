sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/m/MessageToast",
        "sap/m/MessageBox"
    ],
    function(Controller,MessageToast,MessageBox) {
      "use strict";
  
      return Controller.extend("ns.customer.controller.Create", {
        onInit: function() {
        },


        goback: function() {

            window.location.href="https://port4004-workspaces-ws-rmbjv.us10.trial.applicationstudio.cloud.sap/customer/webapp/index.html" ;

            
        },

        savetoDB: function(oEvent){

            // MessageToast.show("Please wait ..... Data adding to DB");



            // console.log(oModel);

            // var oEntry = {

            //     element001 : this.getView().byId("customerId").getValue(),
            //     element002 : this.getView().byId("customerFirstName").getValue(),
            //     element003 : this.getView().byId("customerLastName").getValue()
            // };

            // console.log(oEntry);

            
            // var oModel = this.getView().getBindingContext();

            // console.log(oModel);

            // oModel.create().then(function(){

            //     MessageToast.show("data saved to DB")

            // }.bind(this));
            // //     success: function(){

            // //         MessageBox.show("Success", MessageBox.Icon.SUCCESS, "Customer Detail added")
            // //     }
            // // })



            // Get the form data

//             var customerDetails ={
//    id : this.getView().byId("customerId").getValue(),
//    firstname : this.getView().byId("customerFirstName").getValue(),
//    lastname : this.getView().byId("customerLastName").getValue()
//             };

//             console.log(customerDetails);
  // ...get other data values from other form elements...

  // Create a new entry
//   const customerEntry = this.getModel();

//             console.log(customerEntry);


//             customerEntry.createEntry("/customer", customerDetails).then(() => {
//     // Success: refresh data binding
//     this.getView().getModel().refresh();
//   }).catch((error) => {
//     // Error handling
//     console.error(error);
//   });



                // Get the form data
  const customerDetails = {
    id: this.getView().byId("customerId").getValue(),
    firstname: this.getView().byId("customerFirstName").getValue(),
    lastname: this.getView().byId("customerLastName").getValue()
  };

  // Create a new entry
  const oModel = this.getModel(); // Assuming model is already set

  oModel.createEntry("/customer", customerDetails)
    .then(() => {
      // Success: display success message
      MessageToast.show("Customer detail added successfully");
    })
    .catch((error) => {
      // Error handling: display error message
      MessageBox.error("Error creating customer: " + error.message);
    });

        },

        cancelProcess: function(){



        }
      });
    }
  );
  