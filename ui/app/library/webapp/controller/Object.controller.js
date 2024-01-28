sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("library.controller.Object", {
        onInit() {
           // this.getRouterInfo().getRoute('ObjectView').attachPatternMatched(this._onRouteMatched,this);
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.getRoute("Object").attachMatched(this.onObjectMatched, this);
        },
        onObjectMatched(oEvent) {
            var oArgs,oView;
            oArgs=oEvent.getParameter("arguments");
            
            oView=this.getView();
            console.log(oArgs.bookshop)
            oView.bindElement({
                 path:"/Bookshop("+oArgs.bookshop+")"
              
            });

            // this.getView().bindElement({
            //  path: "/" + window.decodeURIComponent(oEvent.getParameter("arguments").invoicePath),
            //  model: "invoice"
            // });
        }
    });
});