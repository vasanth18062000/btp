sap.ui.define(
    [
      "sap/ui/core/mvc/Controller",
      "sap/ui/model/json/JSONModel",
      "sap/ui/model/Filter",
      "sap/ui/model/FilterOperator",
      "sap/ui/model/FilterType",
      "sap/ui/core/routing/History",
    ],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (
      Controller,
      JSONModel,
      Filter,
      FilterOperator,
      FilterType,
      History
    ) {
      "use strict";
  
      return Controller.extend("proposalapp.controller.Template", {
        onInit: function () {
          this.getProductType();
        },
  
        // getProductType: function(){
  
        //   const oModel = this.getView().getModel(); // Note the parentheses after getView
        //   oModel.read("/PS_PROJECT_TYPE",{
  
        //     success: (oData) => { // Notice the use of arrow function here
        //       console.log(oData);
        //       if (oData && oData.results.length > 0) {
        //         // Login successful
        //         const oRouter = this.getOwnerComponent().getRouter();
        //         oRouter.navTo("nextpage"); // Ensure "nextpage" is correctly defined in your manifest.json
        //       } else {
        //         // Login failed
        //         sap.m.MessageToast.show("Login failed");
        //       }
        //     },
        //     error: () => {
        //       sap.m.MessageToast.show("Login failed");
        //     }
  
        //   });
  
        // },
  
        getProductType: function () {
          var self = this;
          var username = "admin";
          var password = "nimda";
          var auth = "Basic " + btoa(username + ":" + password);
  
          jQuery.ajax({
            url: "https://port4004-workspaces-ws-h7hq4.us10.trial.applicationstudio.cloud.sap/odata/v4/proposal-system-services/PS_PROJECT_TYPE",
            method: "GET",
            cache: false,
            headers: {
              Authorization: auth, // add Authorization header
            },
            success: function (data) {
              var oModel = new sap.ui.model.json.JSONModel(data);
              console.log("htrdj", oModel);
              self.getView().setModel(oModel, "dataModel");
              //     console.log("enum",dataModel);
  
              oModel.refresh();
            },
            error: function (error) {
              console.error("Error loading data:", error);
            },
          });
  
          jQuery.ajax({
            url: "https://port4004-workspaces-ws-h7hq4.us10.trial.applicationstudio.cloud.sap/odata/v4/proposal-system-services/PS_VENDOR_ORG_CONTACT?$expand=PS_VENDOR_ORG",
            method: "GET",
            cache: false,
            headers: {
              Authorization: auth, // add Authorization header
            },
            success: function (data) {
              var oModel = new sap.ui.model.json.JSONModel(data);
              console.log("htrdj2", oModel);
              self.getView().setModel(oModel, "dataModel2");
              //     console.log("enum",dataModel);
  
              oModel.refresh();
            },
            error: function (error) {
              console.error("Error loading data:", error);
            },
          });
  
          jQuery.ajax({
            url: "https://port4004-workspaces-ws-h7hq4.us10.trial.applicationstudio.cloud.sap/odata/v4/proposal-system-services/PS_CUSTOMER_ORG",
            method: "GET",
            cache: false,
            headers: {
              Authorization: auth, // add Authorization header
            },
            success: function (data) {
              var oModel = new sap.ui.model.json.JSONModel(data);
              console.log("htrdj3", oModel);
              self.getView().setModel(oModel, "dataModel3");
              //     console.log("enum",dataModel);
  
              oModel.refresh();
            },
            error: function (error) {
              console.error("Error loading data:", error);
            },
          });
        },
  
        onProductNameChange: function (oEvent) {
          var oInput = oEvent.getSource();
          var sValue = oInput.getValue();
  
          if (sValue.length > 5) {
            oInput.setValueState(sap.ui.core.ValueState.Error);
            oInput.setValueStateText("Maximum 20 characters allowed");
          } else {
            oInput.setValueState(sap.ui.core.ValueState.None);
          }
        },
  
        onNavBack() {
          const oHistory = History.getInstance();
          const sPreviousHash = oHistory.getPreviousHash();
  
          if (sPreviousHash !== undefined) {
            window.history.go(-1);
          } else {
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("RouteTile", {}, true);
          }
        },
  
        // createTemplate3: function(){
        //     var oFormData = {
        //         "id": 5,
        //         "projectType": "DD Hybris Commerce Suite"
        // 	};
        // 	var that = this;
        // 	jQuery.ajax({
        // 		url: "http://localhost:8080/odata/v4/ProposalService/PS_PROJECT_TYPE",
        // 		method: "POST",
        // 		contentType: "application/json",
        // 		data: JSON.stringify(oFormData),
        // 		success: function (response) {
        // 			console.log("Data added successfully:", response);
        // 		},
        // 		error: function (error) {
        // 			console.error("Error adding data:", error);
        // 		}
        // 	});
        // },
  
        createTemplate2: function (oEvent) {
          var htfd = this.getView().byId("template").getValue();
          console.log("demo", htfd);
          // const oRouter = this.getOwnerComponent().getRouter();
          // oRouter.navTo("RouteCreateTemplate", {}, true);
          if (htfd) {
            console.error("htfd is empty");
          } else {
            // Handle the case when htfd does not have a value
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("RouteCreateTemplate", {}, true);
          }
        },
  
        // createTemplate1: function(){
        //     this.pDialog ??= this.loadFragment({
        // 		name: "proposalapp.view.TemplateDialog"
        // 	});
  
        // 	this.pDialog.then((oDialog) => oDialog.open());
        // }
        createTemplate1: function () {
          var self = this;
          var oView = this.getView();
          var oDialog = oView.byId("TemplateDialog");
          var username = "admin";
          var password = "nimda";
          var auth = "Basic " + btoa(username + ":" + password);
          jQuery.ajax({
            url: "https://port4004-workspaces-ws-h7hq4.us10.trial.applicationstudio.cloud.sap/odata/v4/proposal-system-services/PS_TEMPLATE",
            method: "GET",
            cache: false,
            headers: {
              Authorization: auth, // add Authorization header
            },
            success: function (data) {
              var oModel = new sap.ui.model.json.JSONModel(data);
              console.log("htrdj3", oModel);
              self.getView().setModel(oModel);
              //  self.getView().setModel(oModel, "dataModel2");
              //     console.log("enum",dataModel);
  
              oModel.refresh();
            },
            error: function (error) {
              console.error("Error loading data:", error);
            },
          });
          // var oData = {
          //   recipients: [
          //     {
          //       id: "1",
          //       name: "SAP",
          //       client: "Samsung",
          //     },
          //     {
          //       id: "2",
          //       name: "BTP",
          //       client: "Accenture",
          //     },
          //   ],
          // };
  
          // var oModel = new JSONModel(oData);
          // this.getView().setModel(oModel);
  
          // create dialog lazily
          if (!oDialog) {
            // create dialog via fragment factory
            oDialog = sap.ui.xmlfragment(
              oView.getId(),
              "proposalapp.view.TemplateDialog",
              this
            );
            oView.addDependent(oDialog);
            oDialog.attachAfterClose(function () {
              oDialog.destroy();
            });
          }
          oDialog.open();
        },
        onCloseDialog: function () {
          this.getView().byId("templateDialog").close();
        },
        onSaveDialog: function (oEvent) {
          var input = this.byId("template").getValue();
          if(input==""){
            var oTable = this.getView().byId("peopleList");
            var aSelectedItems = oTable.getSelectedItems();
    
            // Check if any item is selected
            if (aSelectedItems.length > 0) {
              // Get the first selected item
              var oSelectedItem = aSelectedItems[0];
              var oCtx = oSelectedItem.getBindingContext();
              this.getView().byId("templateDialog").close();
              var sPropertyValue = oCtx.getProperty("name");
              console.log(sPropertyValue);
              var oModel = oCtx.getModel();
    
              this.getView().byId("template").setValue(sPropertyValue);
            }
          }else{
            var self = this;
            var oView = this.getView();
            var oDialog = oView.byId("TemplateSelectionDialog");
            if (!oDialog) {
              // create dialog via fragment factory
              oDialog = sap.ui.xmlfragment(
                oView.getId(),
                "proposalapp.view.TemplateSelectionDialog",
                this
              );
              oView.addDependent(oDialog);
              oDialog.attachAfterClose(function () {
                oDialog.destroy();
              });
            }
            oDialog.open();
          }
        }
        ,
  
        onUndoPress: function () {
          var input = this.byId("template");
  
          input.setValue("");
        },
  
        formatItems: function (data) {
          let items = [];
          if (data && data.value && data.value.length > 0) {
            data.value.forEach((item) => {
              if (item.PS_VENDOR_ORG) {
                items.push({
                  id: item.PS_VENDOR_ORG.id,
                  name: item.PS_VENDOR_ORG.name,
                  state: item.state
                });
              }
            });
          }
          return items;
        },
  
        onProjectTypeSearch: function (oEvent) {
          var oView = this.getView(),
            sValue = oEvent.getParameter("newValue"), // Use newValue from liveChange event
            oFilter = new Filter("name", FilterOperator.Contains, sValue);
          oView
            .byId("peopleList")
            .getBinding("items")
            .filter(oFilter, FilterType.Application);
        },
  
        onSwitchDialog: function () {
          this.getView().byId("templateSelectionDialog").close();
        
          var oTable = this.getView().byId("peopleList");
          var aSelectedItems = oTable.getSelectedItems();
  
          // Check if any item is selected
          if (aSelectedItems.length > 0) {
            // Get the first selected item
            var oSelectedItem = aSelectedItems[0];
            var oCtx = oSelectedItem.getBindingContext();
            this.getView().byId("templateDialog").close();
            var sPropertyValue = oCtx.getProperty("name");
            console.log(sPropertyValue);
            var oModel = oCtx.getModel();
  
            this.getView().byId("template").setValue(sPropertyValue);
          }
        },
  
        offSwitchDialog: function () {
          this.getView().byId("templateSelectionDialog").close();
          this.getView().byId("templateDialog").close();
  
          // const oRouter = this.getOwnerComponent().getRouter();
          // oRouter.navTo("RouteProposal", {}, true);
        },
  
      });
    }
  );
  