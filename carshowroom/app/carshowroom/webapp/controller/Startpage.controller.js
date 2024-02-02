sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(BaseController) {
      "use strict";
  
      return BaseController.extend("my.carshowroom.controller.Startpage", {
        onInit: function() {
        },

        onNavToFlow : function(){
            const oRouter = this.getOwnerComponent().getRouter();
            console.log(oRouter);
            oRouter.navTo("Cars")
        }
      });
    }
  );
  