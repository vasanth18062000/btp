sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        addToCart: function(oEvent) {
            MessageToast.show("Added To Cart");
            
        }
    };
});
// sap.ui.define([
// 	"sap/m/Button",
// 	"sap/m/MessageToast"
// ], function (Button, MessageToast) {
// 	"use strict";

// 	new Button({
// 		text: "Read",
// 		press: function () {
// 			MessageToast.show("Hello BTP");
// 		}
// 	}).placeAt("content");

// });