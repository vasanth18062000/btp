/*global QUnit*/

sap.ui.define([
	"ns/register/controller/ProfileProject.controller"
], function (Controller) {
	"use strict";

	QUnit.module("ProfileProject Controller");

	QUnit.test("I should test the ProfileProject controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
