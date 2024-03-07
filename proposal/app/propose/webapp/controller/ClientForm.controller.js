sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller,MessageToast) {
    "use strict";

    return Controller.extend("ns.propose.controller.ClientForm", {
        onInit: function () {
        },
        onNextClientDetails: function () {
            // Move to the "Contact Detail" tab in the IconTabBar
            this.getView().byId("iconTabBar").setSelectedKey("contactTab");
        },
        onNextContact1Details: function () {
            // Move to the "Contact Detail" tab in the IconTabBar
            this.getView().byId("iconTabBar").setSelectedKey("contactTab1");
        },
        onNextContact2Details: function () {
            // Move to the "Contact Detail" tab in the IconTabBar
            this.getView().byId("iconTabBar").setSelectedKey("contactTab2");
        },
        onbackClientDetails:function(){
            this.getView().byId("iconTabBar").setSelectedKey("contactTab3");
        },
        onbackClient1Details:function(){
            this.getView().byId("iconTabBar").setSelectedKey("contactTab");

        },
        onbackClient2Details:function(){
           this.getView().byId("iconTabBar").setSelectedKey("contactTab1");

        },

        onSave : function(){
            var oModel = this.getView().getModel();
            var that = this;

                console.log(oModel);
                var oEntry = {
                   
                   id: this.getView().byId("id").getValue(),
                   name: this.getView().byId("name").getValue(),
                  // logo: this.getView().byId("logo").getValue()
                  website:this.getView().byId("website").getValue(),
                  logo: this.getView().byId("idBase64Area").getValue()
                };
                console.log(oEntry);
                oModel.create("/ProposalCustomer",oEntry,{
                    method: "POST",
                    success: function () {
                        MessageToast.show("Added Successfully");
                        that.getView().byId("_IDGenButton2").setVisible(true);
                        var proposalClientId = this.getView().byId("id").getValue();
                        console.log(proposalClientId);
                        var oEntrydetails = {
                          id: this.getView().byId("ID").getValue(),
                          addressLine1: this.getView().byId("addressLine1").getValue(),
                          addressLine2: this.getView().byId("addressLine2").getValue(),
                          addressLine3: this.getView().byId("addressLine3").getValue(),
                          city: this.getView().byId("city").getValue(),
                          pincode: this.getView().byId("pincode").getValue(),
                          state: this.getView().byId("state").getValue(),
                          country: this.getView().byId("country").getValue(),
                          contact_person_1_mobileNumber: this.getView().byId("contact_person_1_mobileNumber").getValue(),
                          //contact_person_1_telephoneNumber: this.getView().byId("contact_person_1_telephoneNumber").getValue(),
                          contact_person_1_emailId: this.getView().byId("contact_person_1_emailId").getValue(),
                          contact_person_2_mobileNumber: this.getView().byId("contact_person_2_mobileNumber").getValue(),
                          //contact_person_2_telephoneNumber: this.getView().byId("contact_person_2_telephoneNumber").getValue(),
                          contact_person_2_emailId: this.getView().byId("contact_person_2_emailId").getValue(),
                          PS_CUSTOMER_ORG_id: proposalClientId
                        };
                        console.log(oEntrydetails);
                oModel.create("/ProposalCustomerContact",oEntrydetails,{
                    method: "POST",
                    success: function () {
                        MessageToast.show(" contact Added Successfully");
                    }
                    });
                }.bind(this)
                });


        },

        //  onSave : function(){
        //     var oModel = this.getView().getModel();
        //     var that = this;

        //         console.log(oModel);
        //         var oEntry = {
        //            id: this.getView().byId("id").getValue(),
        //            name: this.getView().byId("name").getValue(),
        //           // logo: this.getView().byId("logo").getValue()
        //           website:this.getView().byId("website").getValue(),
        //           logo: this.getView().byId("idBase64Area").getValue()
        //         };
        //         // Create an object with the form data
        //  var oFormData = {
        //      id: id,
        //      name: name
        //  };

        //         var self = this;
        //      jQuery.ajax({
        //      url: "https://6cec300atrial-dev-sap-btp-rfpn-test1-srv.cfapps.us10-001.hana.ondemand.com/odata/v4/proposal-system-services/PS_CUSTOMER_ORG",
        //      method: "POST",
        //      success: function (data) {
                    
                    
        //      },
        //      error: function (error) {
        //          console.error("Error loading data:", error);
        //      }
        //  });
        //         console.log(oEntry);
        //     },
        onChangeDP: function (oEvent) {
          
            var that = this;
            var image = new Image();
            var file = oEvent.getParameter("files")[0];
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function () {
                var data = reader.result;
               
                var inputString = data;
                console.log(inputString);
                var wordsToRemove = ["data:image/png;base64,","data:text/plain;base64,","data:image/jpeg;base64,"
                                      ,"data:audio/mpeg;base64,","data:application/vnd.ms-excel;base64,","data:video/mp4;base64,"];
                var replacement = "";
                var regexPattern = new RegExp(wordsToRemove.join('|'), 'gi');
  
                  
                  var resultString = inputString.replace(regexPattern, replacement);
                  console.log(resultString);
                  var rs=resultString;
              
                //console.log(data);
                that.byId("idBase64Area").setValue(resultString);
                var base64Data = inputString;
                that.byId("imagePreview").setSrc(base64Data);
                
                image.onload = function () {
                  
                    if (this.width + this.height === 0) {
                        that.dpImage = "";
                        sap.m.MessageBox.error("Invalid Image!");
                    }
                };
            };
            reader.onerror = function (error) {
                //Error Handling
            };
            
          
        },
        onView:function(){
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            var id=this.getView().byId("id").getValue();
            console.log(id);
            oRouter.navTo("clientView",{
                clientId: id
            });
        }
     
    });
});
