sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,MessageToast) {
        "use strict";

        return Controller.extend("my.project1.controller.projectproposal", {
            onInit: function () {

            },

            // pressPopup () {
            //     this.pDialog ??= this.loadFragment({
            //       name: "my.project1.view.proposalPopup",
            //     });
        
            //     this.pDialog.then((oDialog) => oDialog.open());
            //   },
            //   onCloseDialog: function () {
            //     this.byId("Dialogclose").close();
            //   },


              pressVendorCreate: function(){
                console.log("vendor")
                const oRouter = this.getOwnerComponent().getRouter();
            console.log(oRouter);
            oRouter.navTo("vendorcreate")
              },

              pressClientCreate: function(){
                console.log("client")
                const oRouter = this.getOwnerComponent().getRouter();
                console.log(oRouter);
                oRouter.navTo("clientCreate")
              },

              pressTemplate: function(){
                console.log("template")
                const oRouter = this.getOwnerComponent().getRouter();
                console.log(oRouter);
                oRouter.navTo("TemplateCreate")
              },

            //   handleFileChange: function (oEvent) {
            //     var oFileUploader = this.byId("fileUploader");
            //     var aFiles = oEvent.getParameter("files");
            //     var oFile = aFiles[0];
             
            //     if (oFile) {
            //        this.uploadFile(oFile);
            //        console.log(oFile);
            //     }
            //  },
             
            //  uploadFile: function (oFile) {
            //     var oFileUploader = this.byId("fileUploader");
            //     var sUploadUrl = oFileUploader.getUploadUrl();
            //     console.log(sUploadUrl);
             
                // Use AJAX or any other method to send the file to the server
                // You may need to use a backend service to handle the file upload
                // and return the URL or reference to the uploaded file
             //},
             
            // handleUploadComplete: function (oEvent) {
                // Handle the upload completion if needed
            // },

            //   handleUploadChange: function(oEvent) {
            //     var oUploadButton = this.byId("uploadButton");
            //     var aFiles = oEvent.getParameter("files");
            //     if (aFiles.length > 0) {
            //         oUploadButton.setEnabled(true);
            //     }
            // },
            
            // handleUploadPress: function() {
            //     var oFileUploader = this.byId("imageUploader");
            //     oFileUploader.upload();
            // },
            
            // handleUploadComplete: function(oEvent) {
            //     if (oEvent.getParameter("status") === 200) {
            //         // Handle successful upload
            //         sap.m.MessageToast.show("Image uploaded successfully");
            //     } else {
            //         // Handle upload failure
            //         sap.m.MessageToast.show("Image upload failed");
            //     }
            // },
            
           

             onSave:function(oEvent){
                var payload = {
                //id: this.getView().byId("id").getValue(),
                ownerName: this.getView().byId("vendorName").getValue(),
                ownerLogo: this.getView().byId("fileUploader").getValue(),
                ownercontact: this.getView().byId("vendorContact").getValue(),
                
                
              };

              // var oFileUploader = this.getView().byId("fileUploader");

              // var domRef = oFileUploader.getFocusDomRef();
              // var file = domRef.files[0];
              // var that = this;
              // this.fileName = file.name;
              // this.fileType = file.type;
              // var reader = new FileReader();
              // reader.onload = function(e){
              //   debugger;
              // }

              // reader.readAsDataURL(file);
      
              console.log(payload);
              var oModel = this.getView().getModel();
              oModel.create("/Vendor", payload, {
                method: "POST",
                success: function (response) {
                  MessageToast.show("successfully Added");
                  this.clearForm();
                },
                error: function (error) {
                  MessageToast.show("some error is occured");
                  this.clearForm();
                },
              });
            },
             


        });
    });
