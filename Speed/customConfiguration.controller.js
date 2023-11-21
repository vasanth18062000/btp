sap.ui.define([], function () {
    "use strict";
    return {
        /*
        The following Hook function “onCustomActionPress” accepts only one argument name of the press handler as a string and return the press handler function defined in the custom controller.       
        */
        onCustomActionPress: function(sCustomAction) {
            if (sCustomAction === "press1") {
                return this.press1;
            } else if (sCustomAction === "press2") {
                return this.press2;
            }
        },
        /*
        The following Press Handler contains the custom actions to be performed on click of the button in quickview action footer.
        */
        press1: function(oEvent) {
            window.open("https://www.google.co.in");
        },
        press2: function(oEvent) {
            window.open("http://www.sap.com/index.html");
        }
    };
});
