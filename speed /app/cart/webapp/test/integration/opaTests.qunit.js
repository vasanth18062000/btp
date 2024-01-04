sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/cart/test/integration/FirstJourney',
		'ns/cart/test/integration/pages/CartList',
		'ns/cart/test/integration/pages/CartObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartList, CartObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/cart') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartList: CartList,
					onTheCartObjectPage: CartObjectPage
                }
            },
            opaJourney.run
        );
    }
);