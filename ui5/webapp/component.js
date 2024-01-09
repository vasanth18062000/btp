// // sap.ui.define([

// //     "sap/ui/core/UIComponent",
// //     "sap/ui/model/json/JSONModel",
// //     "sap/ui/model/resource/ResourceModel"
    
// // ], function(UIComponent,JSONModel,ResourceModel) {
// //     'use strict';

// //     return UIComponent.expand("ui5.component",{
// //         metadata : {
// //             "rootview" : {
// //                 "viewName" : "ui5.view.App",
// //                 "type" : "XML",
// //                 "async" : true,
// //                 "id": "app"
// //             }
// //         },

// //         init: function () {
            
// //             //call the init function of the parent

// //             UIComponent.prototype.init.apply(this, arguments);

// //             //set data model

// //             var OData= {
// //             recipient: {
// //                 name: "ui5"
// //             }
// //         };

// //         var OModel = new JSONModel(OData);
// //         this.setModel(OModel);

// //         //set i18n  

// //         var i18nModel = new ResourceModel({

// //             bundleName: "ui5.i18n.i18n",
// //             supportedLocales:[""],
// //             fallbackLocale: ""

// //         });
// //         this.setModel(i18nModel,"i18n");



// //         }
    
// //     })
    
// // }); 


// sap.ui.define([
//     "sap/ui/core/UIComponent",
//     "sap/ui/model/json/JSONModel",
    
  
//  ], (UIComponent, JSONModel) => {
//     "use strict";
 
//     return UIComponent.extend("ui5.Component", {
//        metadata : {
//           "rootView": {
//              "viewName": "ui5.view.App",
//              "type": "XML",
//              "id": "app",
//              manifest: "json"
          

    
//        },
 
//        init() {
//           // call the init function of the parent
//           UIComponent.prototype.init.apply(this, arguments);
//           // set data model
//           const oData = {
//              recipient : {
//                 name : "World"
//              }
//           };
//           const oModel = new JSONModel(oData);
//           this.setModel(oModel);
 
//           // set i18n model
//         //   const i18nModel = new ResourceModel({
//         //      bundleName: "ui5.i18n.i18n"
//         //   });
//         //   this.setModel(i18nModel, "i18n");
//        }
        
        
//     });
//  });
 

sap.ui.define([
    "sap/ui/core/UIComponent",
    "sap/ui/model/json/JSONModel",
   // "sap/ui/model/resource/ResourceModel"
 ], function(UIComponent,JSONModel) {
    "use strict";
 
    return UIComponent.extend("ui5.walkthrough.Component", {

      metadata : {
         interfaces: ["sap.ui.core.IAsyncContentCreation"],
         manifest: "json"
      },

      // metadata : {
      //    "interfaces": ["sap.ui.core.IAsyncContentCreation"],
      //    "rootView": {
      //       "viewName": "ui5.walkthrough.view.App",
      //       "type": "XML",
      //       "id": "app"
      //    }
      //},

       init: function() {
          // call the init function of the parent
          UIComponent.prototype.init.apply(this, arguments);
          // set data model
         const oData = {
            recipient : {
               name : "World"
            }
         };
         const oModel = new JSONModel(oData);
         this.setModel(oModel);

         // set i18n model
         // const i18nModel = new ResourceModel({
         //    bundleName: "sap.ui.demo.walkthrough.i18n.i18n"
         // });
         // this.setModel(i18nModel, "i18n");
       }
    });
 });
