/*global QUnit*/

sap.ui.define([
	"ns/ui5/controller/employeelist.controller"
], function (Controller) {
	"use strict";

	QUnit.module("employeelist Controller");

	QUnit.test("I should test the employeelist controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
