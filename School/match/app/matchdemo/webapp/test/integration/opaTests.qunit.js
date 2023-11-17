sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/matchdemo/test/integration/FirstJourney',
		'ns/matchdemo/test/integration/pages/MatchList',
		'ns/matchdemo/test/integration/pages/MatchObjectPage'
    ],
    function(JourneyRunner, opaJourney, MatchList, MatchObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/matchdemo') + '/index.html'
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