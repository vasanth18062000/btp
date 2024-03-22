sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/m/MessageToast"
    ],
    function(BaseController,MessageToast) {
      "use strict";
  
      return BaseController.extend("ns.proposalsystem.controller.ClientCreation", {
        onInit: function() {
        },

onSave:function(){
            
            var clientBasic = this.getView().getModel();

            console.log(clientBasic);

            var clientdata ={

                id:this.getView().byId("id").getValue(),
                name:this.getView().byId("name").getValue()

            };

            console.log(clientdata);

            clientBasic.create("/ProposalClient", clientdata, {

                method: "POST",
                    success: function () {
                        MessageToast.show("Added Successfully");

                        console.log("Added to DB");

                        var proposalClientId = clientBasic.getProperty("/ProposalClient/id");
                        console.log(proposalClientId);

                        var clientContactDetails ={
                            doorNo: this.getView().byId("doorNo").getValue(),
    streetName: this.getView().byId("streetName").getValue(),
    city: this.getView().byId("city").getValue(),
    pincode: this.getView().byId("pincode").getValue(),
    state: this.getView().byId("state").getValue(),
    Country: this.getView().byId("country").getValue(),
    mobileNumber: this.getView().byId("mobileNumber").getValue(),
    telephoneNumber: this.getView().byId("telephoneNumber").getValue(),
    emailId: this.getView().byId("emailId").getValue(),
    password: this.getView().byId("password").getValue(),
    proposalClient: proposalClientId

                        };

                        console.log(clientContactDetails);

                        clientBasic.create("/ProposalClientContact", clientContactDetails, {
                            method: "POST",
                            success:function(){

                                MessageToast.show("Contact Detail has been saved")
                            }
                        });
                    }.bind(this)
            }
            );
        }
      });
    }
  );
  