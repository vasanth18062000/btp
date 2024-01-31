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
      onInit: function () {},

      onFilterCar(oEvent) {
        // build filter array
        const aFilter = [];
        const sQuery = oEvent.getParameter("query");
        if (sQuery) {
          aFilter.push(new Filter("carName", FilterOperator.Contains, sQuery));
        }

        // filter binding
        const oList = this.byId("_IDGenTable1");
        const oBinding = oList.getBinding("items");
        oBinding.filter(aFilter);
      },

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

      onThemeToggleChange: function (oEvent) {
        var bDarkTheme = oEvent.getParameter("state");
        // Apply the selected theme
        this.applyTheme(bDarkTheme);
      },

      applyTheme: function (bDarkTheme) {
        // Choose the appropriate theme based on the toggle state
        var sTheme = bDarkTheme ? "sap_belize_hcb" : "sap_belize_plus";
        // Apply the theme
        sap.ui.getCore().applyTheme(sTheme);
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

      //Delete Car
      onDelete: function (oEvent) {
        console.log("hai");
        var carId = oEvent.getSource().getBindingContext().getProperty("ID");
        console.log(carId);
        var oModel = this.getView().getModel();
        oModel.remove("/cars(" + carId + ")", {
          method: "delete",
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
