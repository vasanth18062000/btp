// In your controller or component
var oProductModel = new sap.ui.model.json.JSONModel();
var oCartModel = new sap.ui.model.json.JSONModel();
// In your controller or component
this.getView().setModel(oProductModel, "product");
this.getView().setModel(oCartModel, "cart");
