/*global QUnit*/

sap.ui.define([
	"ns/propoui5/controller/Proposal.controller"
], function (Controller) {
	"use strict";

	QUnit.module("Proposal Controller");

	QUnit.test("I should test the Proposal controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
