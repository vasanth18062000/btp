sap.ui.define(
  ["sap/ui/core/mvc/Controller", "sap/m/MessageToast", "sap/ui/core/Fragment"],
  (Controller, MessageToast, Fragment) => {
    "use strict";

    return Controller.extend("ui5.controller.HelloPanel", {
      onShowHello: function () {
        alert("hey gopi click here.. to OK");
        MessageToast.show("Hiii Gopikannan...");
      },
      onOpenDialog() {
        // create dialog lazily
        this.pDialog ??= this.loadFragment({
          name: "ui5.view.HelloDialog",
        });

        this.pDialog.then((oDialog) => oDialog.open());
      },
      onCloseDialog: function () {
        this.byId("helloDialog").close();
      },
    });
  }
);
