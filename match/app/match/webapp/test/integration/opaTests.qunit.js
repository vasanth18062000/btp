sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/match/test/integration/FirstJourney',
		'ns/match/test/integration/pages/MatchList',
		'ns/match/test/integration/pages/MatchObjectPage'
    ],
    function(JourneyRunner, opaJourney, MatchList, MatchObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/match') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMatchList: MatchList,
					onTheMatchObjectPage: MatchObjectPage
                }
            },
            opaJourney.run
        );
    }
);