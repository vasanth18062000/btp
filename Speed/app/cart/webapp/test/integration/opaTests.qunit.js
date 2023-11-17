sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedcart/cart/test/integration/FirstJourney',
		'speedcart/cart/test/integration/pages/CartList',
		'speedcart/cart/test/integration/pages/CartObjectPage',
		'speedcart/cart/test/integration/pages/CartEntryObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartList, CartObjectPage, CartEntryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedcart/cart') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartList: CartList,
					onTheCartObjectPage: CartObjectPage,
					onTheCartEntryObjectPage: CartEntryObjectPage
                }
            },
            opaJourney.run
        );
    }
);