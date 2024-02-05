sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(Controller) {
      "use strict";
  
      return Controller.extend("ns.carshows.controller.TilePage", {
        onInit: function() {
        },
        onNavToFlow:function(){
            var oRouter=this.getOwnerComponent().getRouter();
            console.log("haoi");
            oRouter.navTo("RoutecarShows");
        },
        
      });
    }
  );
  