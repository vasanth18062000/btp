sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller,MessageToast) {
    "use strict";

    return Controller.extend("ns.propose.controller.SupplierForm", {
        onInit: function () {
    
        },
        onNextVendorDetails: function () {
            // Move to the "Contact Detail" tab in the IconTabBar
            this.getView().byId("iconTabBar").setSelectedKey("contactTab");
        },
        onNextContact1Details: function () {
            
            this.getView().byId("iconTabBar").setSelectedKey("contactTab1");
        },
        onNextContact2Details: function () {
            
            this.getView().byId("iconTabBar").setSelectedKey("contactTab2");
        },
        onbackVendorDetails:function(){
            this.getView().byId("iconTabBar").setSelectedKey("contactTab3");
        },
        onbackContact1Details:function(){
            this.getView().byId("iconTabBar").setSelectedKey("contactTab");

        },
        onbackContact2Details:function(){
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
                oModel.create("/ProposalSupplier",oEntry,{
                    method: "POST",
                    success: function () {
                        MessageToast.show("Added Successfully");
                         that.getView().byId("_IDGenButton2").setVisible(true);
                        var proposalOwnerId = this.getView().byId("id").getValue();
                        console.log(proposalOwnerId);
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
                          PS_VENDOR_ORG_id: proposalOwnerId
                          
                        };
                        
                        
                        console.log(oEntrydetails);
                oModel.create("/ProposalSupplierContact",oEntrydetails,{
                    method: "POST",
                    success: function () {
                        MessageToast.show(" contact Added Successfully");
                    }
                    });
                }.bind(this)
                });

                //validate Mobile Number
                // var mobileNumberRegex = /^[0-9]{10}$/;

                // var contactPerson1MobileNumber = this.getView().byId("contact_person_1_mobileNumber").getValue();
                // var contactPerson2MobileNumber = this.getView().byId("contact_person_2_mobileNumber").getValue();
            
                // if (!mobileNumberRegex.test(contactPerson1MobileNumber)) {
                //     MessageToast.show("Invalid Mobile Number for Contact Person 1. Please enter a 10-digit number.");
                //     return;
                // }
            
                // if (!mobileNumberRegex.test(contactPerson2MobileNumber)) {
                //     MessageToast.show("Invalid Mobile Number for Contact Person 2. Please enter a 10-digit number.");
                //     return;
                // }


    //             // Validate email addresses
    // var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    // var contactPerson1Email = this.getView().byId("contact_person_1_emailId").getValue();
    // var contactPerson2Email = this.getView().byId("contact_person_2_emailId").getValue();

    // if (!emailRegex.test(contactPerson1Email)) {
    //     MessageToast.show("Invalid Email Address for Contact Person 1. Please enter a valid email address.");
    //     return;
    // }

    // if (!emailRegex.test(contactPerson2Email)) {
    //     MessageToast.show("Invalid Email Address for Contact Person 2. Please enter a valid email address.");
    //     return;
    // }
        },
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
            oRouter.navTo("supplierView",{
                supplierId: id
            });

        }
     
    });
});
