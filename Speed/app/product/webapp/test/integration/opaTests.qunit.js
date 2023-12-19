sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/product/test/integration/FirstJourney',
		'ns/product/test/integration/pages/ProductList',
		'ns/product/test/integration/pages/ProductObjectPage',
		'ns/product/test/integration/pages/PriceRowObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductList, ProductObjectPage, PriceRowObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductList: ProductList,
					onTheProductObjectPage: ProductObjectPage,
					onThePriceRowObjectPage: PriceRowObjectPage
                }
            },
            opaJourney.run
        );
    }
);