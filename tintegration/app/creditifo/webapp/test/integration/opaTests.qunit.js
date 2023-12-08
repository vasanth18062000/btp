sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/creditifo/test/integration/FirstJourney',
		'ns/creditifo/test/integration/pages/bpcreditinformationList',
		'ns/creditifo/test/integration/pages/bpcreditinformationObjectPage'
    ],
    function(JourneyRunner, opaJourney, bpcreditinformationList, bpcreditinformationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/creditifo') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebpcreditinformationList: bpcreditinformationList,
					onThebpcreditinformationObjectPage: bpcreditinformationObjectPage
                }
            },
            opaJourney.run
        );
    }
);