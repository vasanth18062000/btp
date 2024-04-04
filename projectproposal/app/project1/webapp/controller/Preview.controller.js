sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
  "use strict";

  return Controller.extend("my.project1.controller.Preview", {
    onInit: function () {
      var oRouter = this.getOwnerComponent().getRouter();
      oRouter
        .getRoute("Preview")
        .attachPatternMatched(this.onRouteMatched, this);

      // Create a JSONModel instance
      var oViewModel = new sap.ui.model.json.JSONModel();

      // Set the model on the view with the name "viewModel"
      this.getView().setModel(oViewModel, "viewModel");
    },

    onRouteMatched: function (oEvent) {
      var base64Content = oEvent.getParameter("arguments").base64Content;
      var decodedData = atob(base64Content);
      console.log("Base64 Content from URL:", decodedData);

      // Assuming you have a JSONModel named "viewModel"
      var oViewModel = this.getView().getModel("viewModel");
      oViewModel.setProperty("/decodedData", decodedData);
    },

    onDownloadPress: function () {
      // Get the decoded data from the viewModel
      var oViewModel = this.getView().getModel("viewModel");
      var decodedData = oViewModel.getProperty("/decodedData");

      // Create a Blob with the decoded content
      var blob = new Blob([decodedData], { type: "application/msword" });

      // Create a download link
      var downloadLink = document.createElement("a");
      downloadLink.href = window.URL.createObjectURL(blob);
      downloadLink.download = "document.doc";

      // Trigger the download
      document.body.appendChild(downloadLink);
      downloadLink.click();
      document.body.removeChild(downloadLink);
    },

    onPrintPress: function () {
      window.print();
    }
  });
});
