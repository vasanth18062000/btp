sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'foodcourt/test/integration/FirstJourney',
		'foodcourt/test/integration/pages/FoodCourtList',
		'foodcourt/test/integration/pages/FoodCourtObjectPage'
    ],
    function(JourneyRunner, opaJourney, FoodCourtList, FoodCourtObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('foodcourt') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFoodCourtList: FoodCourtList,
					onTheFoodCourtObjectPage: FoodCourtObjectPage
                }
            },
            opaJourney.run
        );
    }
);