// import express from 'express';
// import cors from 'cors';

// const app = express();

// // Enable CORS middleware
// app.use(cors());

sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",

], function (Controller, MessageToast) {
    "use strict";

    return Controller.extend("ns.proposal.controller.ClientForm", {
        onInit: function () {
        },
        onNextVendorDetails: function () {
            var sname = this.getView().byId("name").getValue();
            var swebsite = this.getView().byId("website").getValue();

            var oFormData = {
                name: sname,
                website: swebsite,
            };

            // Using Axios



            // const axios = require('axios');
            axios.post('https://6cec300atrial-dev-sap-btp-rfpn-test1-srv.cfapps.us10-001.hana.ondemand.com/odata/v4/proposal-system-services/PS_VENDOR_ORG', oFormData)
                .then(response => {
                    const data = response.data;
                    console.log("Sample of data:", data);
                })
                .catch(error => {
                    console.error("Error:", error);
                });

            console.log("saved");

            // Uncomment this section if you prefer using jQuery
            // jQuery.ajax({
            //   url: "https://6cec300atrial-dev-sap-btp-rfpn-test1-srv.cfapps.us10-001.hana.ondemand.com/odata/v4/proposal-system-services/PS_VENDOR_ORG",
            //   method: "POST",
            //   contentType: "application/json",
            //   data: JSON.stringify(oFormData),
            //   success: function (response) {
            //     console.log("Data added successfully:", response);
            //     // Handle the success response as needed
            //   },
            //   error: function (error) {
            //     console.error("Error:", error);
            //     // Handle the error as needed
            //   }
            // });

            console.log("Moving to the next step");

            // Move to the "Contact Detail" tab in the IconTabBar
            this.getView().byId("iconTabBar").setSelectedKey("contactTab");
        }


    });
});
