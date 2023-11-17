sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'itpark/test/integration/FirstJourney',
		'itpark/test/integration/pages/ItParkList',
		'itpark/test/integration/pages/ItParkObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItParkList, ItParkObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('itpark') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheItParkList: ItParkList,
					onTheItParkObjectPage: ItParkObjectPage
                }
            },
            opaJourney.run
        );
    }
);