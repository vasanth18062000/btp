sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

//     var Component = UIComponent.extend("com.ladera.utcl.speed.Component", {
// 		metadata : {
// 			interfaces: [
// 				"sap.ui.core.IAsyncContentCreation" 
// 			],
// 			manifest : "json"
// 		}
// 	});
// 	return Component;
// });



    return {
        
        login: function() {
            MessageToast.show("Button Clicked");
        }
    };

    
});


// sap.ui.define(['sap/ui/core/UIComponent'],
// 	function(UIComponent) {
// 	"use strict";

// 	var Component = UIComponent.extend("com.ladera.utcl.speed.Component", {
// 		metadata : {
            

            
// 			interfaces: [
// 				"sap.ui.core.IAsyncContentCreation" 
// 			],
// 			manifest : "json"
// 		}
    
// 	});
// 	return Component;
// });


// <!DOCTYPE html>
// <html>
// <body>

// <h2>Demo JavaScript in Body</h2>

// <p id="demo">A Paragraph</p>

// <button type="button" onclick="myFunction()">Try it</button>

// <script>
// function myFunction() {
//   document.getElementById("demo").innerHTML = "Paragraph changed.";
// }
// </script>

// </body>
// </html>



// sap.ui.define([
//     "sap/ui/core/mvc/Controller"
//  ], function(Controller) {
//     "use strict";
 
//     return Controller.extend("your.namespace.Main", {
//        onInit: function() {
//           // Controller initialization code here
//        },
 
//        onActionButtonPress: function() {
//           // Handle action button press event here
//           alert("Action Button Pressed!");
//        }
//     });
//  });



 
