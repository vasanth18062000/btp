sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/businesspartnerindentifycation/test/integration/FirstJourney',
		'ns/businesspartnerindentifycation/test/integration/pages/bupaIdentyficationList',
		'ns/businesspartnerindentifycation/test/integration/pages/bupaIdentyficationObjectPage'
    ],
    function(JourneyRunner, opaJourney, bupaIdentyficationList, bupaIdentyficationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/businesspartnerindentifycation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebupaIdentyficationList: bupaIdentyficationList,
					onThebupaIdentyficationObjectPage: bupaIdentyficationObjectPage
                }
            },
            opaJourney.run
        );
    }
);