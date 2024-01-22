/**
 * eslint-disable @sap/ui5-jsdocs/no-jsdoc
 */

sap.ui.define([
        "sap/ui/core/UIComponent",
        "sap/ui/Device",
        "ns/odataapi/model/models"
    ],
    function (UIComponent, Device, models) {
        "use strict";

        return UIComponent.extend("ns.odataapi.Component", {
            metadata: {
                manifest: "json"
            },
    
            init: function () {
    
                // call the init function of the parent
                UIComponent.prototype.init.apply(this, arguments);
    
                // set data model
        var sURI = "https://cors-anywhere.herokuapp.com/http://services.odata.org/V3/Northwind/Northwind.svc/";
        var oDataModel = new sap.ui.model.odata.ODataModel(sURI);
        this.setModel(oDataModel,"view");
    
                // create the views based on the url/hash
                this.getRouter().initialize();
            }
        });
    }
);