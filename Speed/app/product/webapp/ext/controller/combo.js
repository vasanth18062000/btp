 var oModel = new sap.ui.model.odata.v2.ODataModel("/sap/opu/odata/sap/[name of OData-Service/");

    oModel.create("/[name of OData-entity]", mNewEntry, {
        method: "POST",
            success: function(){
                // for example your success message...
            },
            error: function() {
                // for example your error message...
            }
    });

    // In your controller or component
var oProductModel = new sap.ui.model.json.JSONModel();
var oCartModel = new sap.ui.model.json.JSONModel();
// In your controller or component
this.getView().setModel(oProductModel, "product");
this.getView().setModel(oCartModel, "cart");
