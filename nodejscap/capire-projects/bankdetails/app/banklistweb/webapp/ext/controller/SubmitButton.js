sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast,ODataModel) {
    'use strict';

    return {
        submitButton: function(oevent) {
            MessageToast.show('afas')
            console.log('button');
            var oModel = new ODataModel({
                serviceUrl: "/odata/v4/bankdetails",
                synchronizationMode: "None",
                autoExpandSelect: true,
                groupId: "$auto"
              });
        
              oModel.callFunction("/bankdetails.BankDetail/submit2", {
                method: "POST",
                urlParameters: {BankCountry,BankInternalID},
                success: function (oData, response) {
                  // Handle success
                  console.log("Submit action success");
                },
                error: function (oError) {
                  // Handle error
                  console.error("Submit action error", oError);
                }
              });

            // const res=await POST(`/submitOrder`,{bank.BankInternalID,bankdetail:})
        }
    };
});
