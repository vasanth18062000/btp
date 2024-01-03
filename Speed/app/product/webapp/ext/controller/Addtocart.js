const { Schema } = require("mongoose");

sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    cds.$importentity([
        { $importentity: "com.ladera.utcl.speed::Schema.Product" },

        {$importentity: "com.ladera.utcl,speed::Schema.cartEntry"}
    ], cart);

    return {
        Addtocart: function(oEvent) {
            const { Schema } = require("hdb");
            MessageToast.show("Custom handler invoked." + id);

            document.querySelector('.ns.product::ProductObjectPage--fe::FooterBar::CustomAction::Action003-BDI-content')
                    .addEventListener('click', ()=>{
                        console.log('btn clicked');
                    }); 


           

            const express = require('express'); 
            const app = express();
            const bodyParser = require('body-parser');
            app.use(bodyParser.json());


            
        }
    };
        
});
