sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment"
], function (Controller, Fragment) {
    "use strict";

    return Controller.extend("ns.propose.controller.Main", {
        onInit: function () {
            // Initialization code if needed
        },

        onNavOrganization: function () {
            // Load the fragment
            console.log("hai");
            if (!this.pDialog) {
                this.pDialog = Fragment.load({
                    id: "AddcarDialog",
                    name: "ns.propose.view.Organizefragement",
                    controller: this // Pass the controller to the fragment
                }).then(function (oDialog) {
                    // Make the dialog available globally
                    this.getView().addDependent(oDialog);
                    return oDialog;
                }.bind(this));
            }

            // Open the dialog
            this.pDialog.then(function (oDialog) {
                oDialog.open();
            });
        },

        onClose: function () {
            // Close the dialog
            if (this.pDialog) {
                this.pDialog.then(function (oDialog) {
                    oDialog.close();
                });
            }
        },

        cvButton: function(){
            console.log("Vendor button clicked!");
            // Navigate to the proposal form
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("vendorclient");
        },

        onNavTemplate: function(){
            console.log("Vendor button clicked!");
            // Navigate to the proposal form
            // this.getOwnerComponent().getRouter().navTo("vendorclient");
            var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("templateCreation");
        }
    });
});
