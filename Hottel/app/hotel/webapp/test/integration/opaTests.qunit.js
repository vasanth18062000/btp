sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/hotel/test/integration/FirstJourney',
		'ns/hotel/test/integration/pages/HottelList',
		'ns/hotel/test/integration/pages/HottelObjectPage'
    ],
    function(JourneyRunner, opaJourney, HottelList, HottelObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/hotel') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheHottelList: HottelList,
					onTheHottelObjectPage: HottelObjectPage
                }
            },
            opaJourney.run
        );
    }
);