sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sales/test/integration/FirstJourney',
		'sales/test/integration/pages/SalesHeadersMain'
    ],
    function(JourneyRunner, opaJourney, SalesHeadersMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sales') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesHeadersMain: SalesHeadersMain
                }
            },
            opaJourney.run
        );
    }
);