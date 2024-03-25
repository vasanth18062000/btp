/*global QUnit*/

sap.ui.define([
	"ns/pro/controller/pro.controller"
], function (Controller) {
	"use strict";

	QUnit.module("pro Controller");

	QUnit.test("I should test the pro controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
