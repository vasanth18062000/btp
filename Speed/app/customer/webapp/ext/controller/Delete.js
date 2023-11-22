sap.ui.define(
    
    ["sap/m/MessageToast","sap/ui/core/UIComponent"], 
    
    function(UIComponent) {
    'use strict';

    // return {
    //     Delete: function(oEvent) {
            
    //         MessageToast.show("Custom handler invoked.");
    //     }
    // };

return{
    Delete : function(onclick)
    {

    var Component = UIComponent.extend("sap.m.sample.Button.Component", {

        		metadata : {
        			manifest: "json"
        		}
        	});
        
        	return Component;

    }

}

}
    
);


// sap.ui.define(['sap/ui/core/UIComponent'],
// 	function(UIComponent) {
// 	"use strict";

// 	var Component = UIComponent.extend("sap.m.sample.Button.Component", {

// 		metadata : {
// 			manifest: "json"
// 		}
// 	});

// 	return Component;

// })
