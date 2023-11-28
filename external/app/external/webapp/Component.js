sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("ns.external.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);