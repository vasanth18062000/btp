sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
	"sap/ui/model/FilterOperator",
    'sap/f/library',
    "sap/ui/model/json/JSONModel"

],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, Filter, FilterOperator, fioriLibrary,JSONModel) {
        "use strict";

        return Controller.extend("ns.carshowroom.controller.car", {
            onInit: function () {
          
            },
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
		onListItemPress: function () {
			var oFCL = this.oView.getParent().getParent();
			oFCL.setLayout(fioriLibrary.LayoutType.TwoColumnsMidExpanded);
                  const oModel = new JSONModel(Car);
                this.getView().setModel(oModel);
		}
        });
    });
