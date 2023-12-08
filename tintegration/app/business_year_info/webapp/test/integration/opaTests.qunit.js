sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/businessyearinfo/test/integration/FirstJourney',
		'ns/businessyearinfo/test/integration/pages/bpyearinformationList',
		'ns/businessyearinfo/test/integration/pages/bpyearinformationObjectPage'
    ],
    function(JourneyRunner, opaJourney, bpyearinformationList, bpyearinformationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/businessyearinfo') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebpyearinformationList: bpyearinformationList,
					onThebpyearinformationObjectPage: bpyearinformationObjectPage
                }
            },
            opaJourney.run
        );
    }
);