sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/resource/ResourceModel"
], function(Controller,MessageToast,JSONModel,ResourceModel) {
    'use strict';
    return Controller.extend("carmanagement.controller.App",{
        
            onInit(){
                // set data model on view
                const oData={
                    recipient:{
                    name:"india"
                }
            };
            const oModel =new JSONModel(oData);
            this.getView().setModel(oModel);

            var i18nModel=new ResourceModel({
                bundleName:"carmanagement.i18n.i18n"
            });
            this.getView().setModel(i18nModel,"i18n");
            },
            onShowHello:function(){
                // alert("hey world");
                // MessageToast.show("Hello vasanth");
                  // read msg from i18n model
         const oBundle = this.getView().getModel("i18n").getResourceBundle();
         const sRecipient = this.getView().getModel().getProperty("/recipient/name");
         const sMsg = oBundle.getText("helloMsg", [sRecipient]);

         // show message
         MessageToast.show(sMsg);
             }
        
    });
});