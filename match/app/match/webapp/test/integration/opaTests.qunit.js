sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/match/test/integration/FirstJourney',
		'ns/match/test/integration/pages/MatchMain'
    ],
    function(JourneyRunner, opaJourney, MatchMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/match') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMatchMain: MatchMain
                }
            },
            opaJourney.run
        );
    }
);