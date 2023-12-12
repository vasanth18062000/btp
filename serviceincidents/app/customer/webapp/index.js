sap.ui.define([
	"sap/m/Button",
	"sap/m/MessageToast"
], function (Button, MessageToast) {
	"use strict";

	new Button({
		text: "Ready...",
		press: function () {
			MessageToast.show("Welcome!");
		}
	}).placeAt("content");

});

sap.ui.define([
	"sap/ui/core/mvc/XMLView"
], function (XMLView) {
	"use strict";

	XMLView.create({viewName: "Quickstart.App"}).then(function (oView) {
		oView.placeAt("content");
	});
});