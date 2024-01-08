sap.ui.define([
	"sap/ui/core/mvc/XMLView"
], (XMLView) => {
	"use strict";
	XMLView.create({
		viewName: "carmanagement.view.App"
	}).then((oView) => oView.placeAt("content"));
});