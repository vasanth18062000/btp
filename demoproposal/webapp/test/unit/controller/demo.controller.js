/*global QUnit*/

sap.ui.define([
	"ns/demoproposal/controller/demo.controller"
], function (Controller) {
	"use strict";

	QUnit.module("demo Controller");

	QUnit.test("I should test the demo controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
