sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'book/product/test/integration/FirstJourney',
		'book/product/test/integration/pages/ProductsList',
		'book/product/test/integration/pages/ProductsObjectPage',
		'book/product/test/integration/pages/CategoriesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage, CategoriesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('book/product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage,
					onTheCategoriesObjectPage: CategoriesObjectPage
                }
            },
            opaJourney.run
        );
    }
);