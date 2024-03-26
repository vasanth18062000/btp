/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"ns/ui5demodeploy/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
