sap.ui.define([
  "sap/ui/core/mvc/Controller",
  "sap/ui/model/json/JSONModel" // Import JSONModel
], function(Controller, JSONModel) {
  "use strict";

  var selectedItem;


  debugger;

  function isValidBase64(str) {
    try {
        // Check if encoding and decoding the string results in the original string
        return btoa(atob(str)) === str;
    } catch (error) {
        // If an error occurs during encoding or decoding, return false
        return false;
    }
}

  return Controller.extend("ns.proposalsystem.controller.PreviewForm", {
    onInit: function() {
      var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
      oRouter.getRoute("PreviewForm").attachMatched(this.onObjectMatched, this);
    },

    onObjectMatched: function(oEvent) {
      var oArgs = oEvent.getParameter("arguments");
      var oView = this.getView();
      selectedItem = oArgs.mainpreviewid;
      console.log(selectedItem);
      oView.bindElement({
        path: "/MainSection(" + selectedItem + ")" 
      });

      this.associated();
    },

    associated: function() {
      var oModel = this.getOwnerComponent().getModel();
      var that = this; // Store reference to the controller
  
      oModel.read("/MainSection(" + selectedItem + ")", {
          method: "GET",
          success: function(response) {
              var oJSON = new JSONModel(response);   
              
              console.log(oJSON);
              
              // var decodedText = atob(oJSON.getProperty("/textarea"));
              // console.log(decodedText);
              // oJSON.setProperty("/textarea", decodedText);              
              that.getView().setModel(oJSON, "ven");
          },
          error: function(error) {
              console.error("Error fetching associated data:", error);
          }
      });
  }
  
  });
});
