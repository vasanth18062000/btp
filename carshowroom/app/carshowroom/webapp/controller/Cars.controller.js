sap.ui.define(
  [
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/m/MessageBox",
    "sap/m/MessageToast",
  ],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller, Filter, FilterOperator, MessageBox, MessageToast) {
    "use strict";

    return Controller.extend("my.carshowroom.controller.Cars", {
      onInit: function () {
        // var isDisabled = localStorage.getItem("isDisabled");
        // if (isDisabled === "true") {
        //   this.oSwitch = this.getView().byId("mySwitch");
        //  // this.oSwitch.setEnabled(true);
        // }
        // Set the default language (English)

        
        //language
        //sap.ui.getCore().getConfiguration().setLanguage("en");
      },

      //language implement
      onChangeLanguage: function (oEvent) {
        var SelectedItemKey = oEvent.getParameter("selectedItem").getKey();
        sap.ui.getCore().getConfiguration().setLanguage(SelectedItemKey);
      },

      onThemeToggleChange: function (oEvent) {
        var bDarkTheme = oEvent.getParameter("state");

        //   if (bDarkTheme) {
        //   localStorage.setItem("isDisabled", "true");
        //   window.location.reload();

        // } else {
        //   this.oSwitch.setEnabled(true);
        //   localStorage.removeItem("isDisabled");
        // }

        // Apply the selected theme
        this.applyTheme(bDarkTheme);
      },

      applyTheme: function (bDarkTheme) {
        // Choose the appropriate theme based on the toggle state
        //var sTheme = bDarkTheme ? "sap_fiori_3_dark" : "sap_belize_plus";
        var sTheme = bDarkTheme ? "sap_horizon_dark" : "sap_horizon";

        // Apply the theme
        sap.ui.getCore().applyTheme(sTheme);
      },

      //search filter
      onFilterCar(oEvent) {
        const aFilter = [];
        const sQuery = oEvent.getParameter("query");
        if (sQuery) {
          aFilter.push(new Filter("carName", FilterOperator.Contains, sQuery));
        }
        const oList = this.byId("_IDGenTable1");
        const oBinding = oList.getBinding("items");
        oBinding.filter(aFilter);
      },

      //route to cardetail page
      onPress(oEvent) {
        var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
        var SelectedItem = oEvent
          .getSource()
          .getBindingContext()
          .getProperty("ID");
        console.log(oRouter);
        oRouter.navTo("RouteCars", {
          invoicePath: encodeURIComponent(SelectedItem),
        });
      },

      // Add Car
      onOpenDialog() {
        this.pDialog ??= this.loadFragment({
          name: "my.carshowroom.view.AddCar",
        });

        this.pDialog.then((oDialog) => oDialog.open());
      },
      onCloseDialog: function () {
        this.byId("AddcarDialog").close();
      },

      onSubmitFormPress: function () {
        console.log(payload);
        var payload = {
          ID: this.getView().byId("Label1").getValue(),
          carName: this.getView().byId("Label2").getValue(),
          carModel: this.getView().byId("Label3").getValue(),
          engineType: this.getView().byId("Label4").getValue(),
          modelYear: this.getView().byId("Label5").getValue(),
        };

        console.log(payload);
        var oModel = this.getView().getModel();
        oModel.create("/cars", payload, {
          method: "POST",
          // success: function (response) {
          //   MessageBox.show(
          //     "New car is added",
          //     MessageBox.Icon.SUCCESS,
          //     "car is added..!"
          //   );
          //   this.byId("AddcarDialog").close();
          // },
          // error: function (error) {
          //   MessageBox.show(
          //     "some error is occured",
          //     MessageBox.Icon.ERROR,
          //     "oops error..!"
          //   );
          // },
          success: function (response) {
            MessageToast.show("car is successfully Added");
            this.clearForm();
          },
          error: function (error) {
            MessageToast.show("some error is occured");
            this.clearForm();
          },
        });
      },

      //Update Car
      onOpenUpdateDialog(oEvent) {
        this.pDialog ??= this.loadFragment({
          name: "my.carshowroom.view.UpdateCar",
        });

        this.pDialog.then((oDialog) => oDialog.open());
        this.carId = oEvent.getSource().getBindingContext().getProperty("ID");
        console.log(this.carId);
        this.pDialog ??= this.loadFragment({
          name: "my.carshowroom.view.UpdateCar",
        });
        this.pDialog.then((oDialog) => oDialog.open());
      },
      onCloseDialog: function () {
        window.location.reload();
        this.byId("UpdateCarDialog").close();
      },

      onUpdate: function () {
        var payload = {
          // ID: this.getView().byId("Label1").getValue(),
          carName: this.getView().byId("Label2").getValue(),
          carModel: this.getView().byId("Label3").getValue(),
          engineType: this.getView().byId("Label4").getValue(),
          modelYear: this.getView().byId("Label5").getValue(),
        };
        console.log(payload);
        var oModel = this.getView().getModel();
        oModel.update("/cars(" + this.carId + ")", payload, {
          method: "UPDATE",
          success: function (response) {
            MessageToast.show("car is successfully updated");
            this.clearForm();
          },
          error: function (error) {
            MessageToast.show("some error is occured");
            this.clearForm();
          },
        });
      },

      //Delete Car with confirmation alert
      onDelete: function (oEvent) {
        var that = this;
        MessageBox.confirm("Are you sure you want to delete?", {
          title: "Confirmation",
          onClose: function (oAction) {
            if (oAction === MessageBox.Action.OK) {
              // User confirmed the deletion, perform the deletion logic here
              that.performDelete(oEvent);
            }
          },
        });
      },
      performDelete: function (oEvent) {
        console.log("Deletion confirmed");
        // var carId = oEvent.getSource().getBindingContext().getProperty("ID");

        //  if (!oEvent) {
        //   console.error("delete is error");
        //   return;
        // }
        var carId = oEvent.getSource().getBindingContext().getProperty("ID");
        console.log(carId);
        var oModel = this.getView().getModel();
        oModel.remove("/cars(" + carId + ")", {
          method: "DELETE",
          success: function (response) {
            MessageToast.show("car is successfully deleted");
          }.bind(this),
          error: function (error) {
            MessageToast.show("some error is occured");
          },
        });
      },
    });
  }
);
