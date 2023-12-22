sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/ladera/speed/cart/test/integration/FirstJourney',
		'com/ladera/speed/cart/test/integration/pages/CartObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/ladera/speed/cart') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartObjectPage: CartObjectPage
                }
            },
            opaJourney.run
        );
    }
);