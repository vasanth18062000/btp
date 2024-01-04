sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cart/test/integration/FirstJourney',
		'cart/test/integration/pages/CartList',
		'cart/test/integration/pages/CartObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartList, CartObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cart') + '/index.html'
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