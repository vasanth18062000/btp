var cds = require("@sap/cds");

cds.$importEntities([
    { $entity: "com.ladera.utcl.speed::SpeedSchema.Product" }
], AddingCart);


sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';
    console.log("message locked");
    return {
        AddingCart: function(oEvent) {
            var product = entities["com.ladera.utcl.speed::SpeedSchema.Product"];
            product=this.entities
            console.log(product);

            MessageToast.show("Product added to your shopping cart");
        }
    };
    
});



