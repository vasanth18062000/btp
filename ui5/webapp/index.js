// // sap.ui.define([
// //     "sap/m/Text",
// //     "sap/ui/core/mvc/XMLView"
    
// // ], function (Text) {
// //     'use strict';

// //     alert("UI5 is running good....😊");

// //     new Text({
// //         text: "✌️ Hello UI5 ✌️"
// //     }).placeAt("content")

// //     // XMLView.create({
// //     //     viewname:"ui5.view.App"
// //     // }).then((oView)=>{
// //     //     oView.placeAt("content");
// //     // })
    
// // });


// // sap.ui.define([
// // 	// "sap/ui/core/mvc/XMLView"
// //     "sap/ui/core/ComponentContainer"
// // // ], (XMLView) => {
// // // 	"use strict";

// // 	// XMLView.create({
// // 	// 	viewName: "ui5.view.App"
// // 	// }).then(function(oView) { oView.placeAt("content")});
// // // });



// // sap.ui.define([
  
// //         "sap/ui/core/ComponentContainer"

// // ], function(ComponentContainer){
// //     "use strict";

// //     new ComponentContainer({

// //         name: "ui5",
// //         settings: {

// //             id: "ui5"


// //         },
// //         async: true


// //     }).placeAt("content");

// // }

// // )


// sap.ui.define([
// 	"sap/ui/core/ComponentContainer"
// ], (ComponentContainer) => {
// 	"use strict";

// 	new ComponentContainer({
// 		name: "ui5",
// 		settings : {
// 			id : "walkthrough"
// 		},
// 		async: true
// 	}).placeAt("content");
// });


sap.ui.define([
    "sap/ui/core/ComponentContainer"
], (ComponentContainer) => {
    "use strict";

    new ComponentContainer({
        name: "ui5.walkthrough",
        settings : {
            id : "walkthrough"
        },
        async: true
    }).placeAt("content");
});



// sap.ui.define([
//     //"sap/m/Text"
//     "sap/ui/core/mvc/XMLView"


// ], function(XMLView) {
//  "use strict";


//     XMLView.create({
//         viewName: "ui5.walkthrough.view.App"
//     }).then(function(oView){
//         oView.placeAt("content");
//     });
//     //new Text({ text : "Hello World - control"}).placeAt("content");

//  //alert("UI5 is ready");
// });