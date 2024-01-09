// sap.ui.define([
//    "sap/ui/core/mvc/Controller",
//    "sap/m/MessageToast"

// ], function(Controller,MessageToast) {
//     'use strict';

//     return Controller.extend("ui5.controller.App",{

//         onshowHello: function(){


//             //read msg from i18n model

//             var OBundle=this.getView().getModel("i18n").getResourceBundle();
//             var sRecipient = this.getView().getModel().getProperty("/recipient/name");
//             var sMsg= OBundle.getText("helloMsg",[sRecipient]);



//             //show a native Js alert
//             MessageToast.show(sMsg);
//         }

//     });
    
// });


// // sap.ui.define([
// //     "sap/ui/core/mvc/Controller",
// //     "sap/m/MessageToast"
// //  ], (Controller, MessageToast) => {
// //     "use strict";
 
// //     return Controller.extend("ui5.controller.App", {

// //        onShowHello() {
// //           // read msg from i18n model
// //           const oBundle = this.getView().getModel("i18n").getResourceBundle();
// //           const sRecipient = this.getView().getModel().getProperty("/recipient/name");
// //           const sMsg = oBundle.getText("helloMsg", [sRecipient]);
 
// //           // show message
// //           MessageToast.show(sMsg);
// //        }
// //     });
// //  });
 

sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
   //  "sap/ui/model/json/JSONModel",
   //  "sap/ui/model/resource/ResourceModel"
 ], function(
    Controller,MessageToast) {
    "use strict";
 
    return Controller.extend("ui5.walkthrough.controller.App", {

      //   onInit() {
      //       // set data model on view
      //       const oData = {
      //          recipient : {
      //             name : "World"
      //          }
      //       };
      //       const oModel = new JSONModel(oData);
      //       this.getView().setModel(oModel);


      //        // set i18n model on view
      //    const i18nModel = new ResourceModel({
      //       bundleName: "ui5.walkthrough.i18n.i18n"
      //    });
      //    this.getView().setModel(i18nModel, "i18n");

      //    },

       onShowHello() {


          // read msg from i18n model
          const oBundle = this.getView().getModel("i18n").getResourceBundle();
          const sRecipient = this.getView().getModel().getProperty("/recipient/name");
          const sMsg = oBundle.getText("helloMsg", [sRecipient]);

          // show a native JavaScript alert
         // alert("Hello World");
        // MessageToast.show("Hello World");
         MessageToast.show(sMsg);
       },


       onOpenDialog() {
        // create dialog lazily
        this.pDialog ??= this.loadFragment({
            name: "ui5.walkthrough.view.HelloDialog"
        });
    
        this.pDialog.then((oDialog) => oDialog.open());
    },

		onCloseDialog() {
			// note: We don't need to chain to the pDialog promise, since this event handler
			// is only called from within the loaded dialog itself.
			this.byId("helloDialog").close();
		}
    });
 });