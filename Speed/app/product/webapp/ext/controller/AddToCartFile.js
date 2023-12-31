sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        cart: function(oEvent) {
            // Get the selected product ID
            var selectedProductId = oEvent.getSource().getBindingContext().getProperty("ProductId");
          
            // Retrieve product details from HANA using OData service
            var oModel = this.getOwnerComponent().getModel();
            oModel.read("/Products(ProductId='" + selectedProductId + "')", {
              success: function(oData) {
                // Create cart entry object
                var cartEntry = {
                  ProductId: selectedProductId,
                  ProductName: oData.ProductName,
                  Quantity: 1, // Adjust default quantity if needed
                  Price: oData.Price // If price information is available
                };
          
                // Store cart entry in local storage
                localStorage.setItem("cart", JSON.stringify(cartEntry));
          
                // Update UI (e.g., display success message, refresh cart summary)
              },
              error: function(oError) {
                // Handle errors gracefully
                console.error("Error retrieving product:", oError);
              }
            });
          },
        cartpage: function() {
            // ... (same as above)
        
            // Navigate to the cart view
            var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
            oRouter.navTo("cartV");
        },
        // In your cart view controller
onInit: function() {
    // Get the cart model
    var oCartData = this.getView().getModel("cart").getData();
    // Display the cart data as needed in your view
}

    };
});
