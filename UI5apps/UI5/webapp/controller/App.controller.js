sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/resource/ResourceModel"

 ], (Controller,MessageToast,JSONModel,ResourceModel) => {
    "use strict";
 
    return Controller.extend("ui5.controller.App", {


      onInit : function(){ 


         var oData ={
            recipient :{
               name: "computer"
            }
         };

         var oModel =new JSONModel(oData);
         this.getView().setModel(oModel);

         //set Model on view 

         var i18nModel =new ResourceModel({
             bundleName: "ui5.i18n.i18n"
         });

         this.getView().setModel(i18nModel,"i18n"); 


      },

         onShowHello :function() { 
          // -------*show a native JavaScript alert*----------------


         // alert("Hello World");
         MessageToast.show("Hello Gopikannan Welcome!!!");

       }
    });
 });