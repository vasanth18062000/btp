sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.myfioriui5app.controller.View1", {
            onInit: function () {

            },
            clickMyButton: function(){
                this.getView().byId("image0").setVisible(true);
            }
        });
    });
