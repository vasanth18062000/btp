sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedpro/product/test/integration/FirstJourney',
		'speedpro/product/test/integration/pages/ProductsList',
		'speedpro/product/test/integration/pages/ProductsObjectPage',
		'speedpro/product/test/integration/pages/PriceRowObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage, PriceRowObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedpro/product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage,
					onThePriceRowObjectPage: PriceRowObjectPage
                }
            },
            opaJourney.run
        );
    }
);