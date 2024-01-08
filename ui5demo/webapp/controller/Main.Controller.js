sap.ui.define([
    'sap/ui/core/mvc/Controller'
], function(Controller) {
    'use strict';

    return Controller.extend("ui5demo.Main",{
        pressMe:function(){
            alert("welcome")
        }
    })
    
});