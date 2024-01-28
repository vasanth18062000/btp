sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/suthernrailways/test/integration/FirstJourney',
		'ns/suthernrailways/test/integration/pages/PassengerinfoList',
		'ns/suthernrailways/test/integration/pages/PassengerinfoObjectPage'
    ],
    function(JourneyRunner, opaJourney, PassengerinfoList, PassengerinfoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/suthernrailways') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePassengerinfoList: PassengerinfoList,
					onThePassengerinfoObjectPage: PassengerinfoObjectPage
                }
            },
            opaJourney.run
        );
    }
);