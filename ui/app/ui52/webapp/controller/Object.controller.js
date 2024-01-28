sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("ui52.controller.Object", {
        onInit() {
           // this.getRouterInfo().getRoute('ObjectView').attachPatternMatched(this._onRouteMatched,this);
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("Object").attachMatched(this.onObjectMatched, this);
        },
        onObjectMatched(oEvent) {
            var oArgs,oView;
            oArgs=oEvent.getParameter("arguments");
            oView=this.getView();
            oView.bindElement({
                 path:"/title('"+oArgs.bookshop+"')"
                // ,
                // event:{
                //  dataRequester:function(){oView.setBusy(true)},
                //  dataReceived:function(){oView.setBusy(false)},
                // },
            });

            // this.getView().bindElement({
            //  path: "/" + window.decodeURIComponent(oEvent.getParameter("arguments").invoicePath),
            //  model: "invoice"
            // });
        }
    });
});