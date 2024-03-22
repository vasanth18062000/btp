sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(Controller) {
      "use strict";
  var selectedItem;
      return Controller.extend("ns.proposalsystem.controller.PreviewForm", {
        onInit: function () {
          var oRouter=sap.ui.core.UIComponent.getRouterFor(this);
          oRouter.getRoute("PreviewForm").attachMatched(this.onObjectMatched, this); //Attach Router Pattern      
      },
        onObjectMatched(oEvent) {
          var oArgs,oView;
          oArgs=oEvent.getParameter("arguments");
          oView=this.getView();
          console.log(oArgs.mainSectionData);
          selectedItem=oArgs.mainSectionData;
          oView.bindElement({
            path:"/MainSection("+oArgs.mainSectionData+")"
        });
        // this.associated();
        },
        // associated:function(){
        //   var oModel=this.getOwnerComponent().getModel();
        //   var oJSON=new sap.ui.model.json.JSONModel();
        //   oModel.read("/MainSection("+selectedItem+")",{
        //       method: "GET",
        //       success:function(response){
        //           debugger;
        //           console.log(response.results)
        //           oJSON.setData(response.results);
        //           this.getView().setModel(oJSON,"ven")
        //                       }.bind(this),
        //                       error:function(error){
        //                           // debugger;

        //                       }

                             
        //   })
        // },
      });
    }
  );
  