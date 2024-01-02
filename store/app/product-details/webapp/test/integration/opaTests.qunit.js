sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/productdetails/test/integration/FirstJourney',
		'ns/productdetails/test/integration/pages/ProductDetailsList',
		'ns/productdetails/test/integration/pages/ProductDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductDetailsList, ProductDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/productdetails') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductDetailsList: ProductDetailsList,
					onTheProductDetailsObjectPage: ProductDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);