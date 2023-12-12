sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/deplocalnumber/test/integration/FirstJourney',
		'api/deplocalnumber/test/integration/pages/DepdntIntlLocNumberList',
		'api/deplocalnumber/test/integration/pages/DepdntIntlLocNumberObjectPage'
    ],
    function(JourneyRunner, opaJourney, DepdntIntlLocNumberList, DepdntIntlLocNumberObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/deplocalnumber') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDepdntIntlLocNumberList: DepdntIntlLocNumberList,
					onTheDepdntIntlLocNumberObjectPage: DepdntIntlLocNumberObjectPage
                }
            },
            opaJourney.run
        );
    }
);