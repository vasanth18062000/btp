sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/unloadingpoint/test/integration/FirstJourney',
		'ns/unloadingpoint/test/integration/pages/CustomerUnloadingPointList',
		'ns/unloadingpoint/test/integration/pages/CustomerUnloadingPointObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerUnloadingPointList, CustomerUnloadingPointObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/unloadingpoint') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerUnloadingPointList: CustomerUnloadingPointList,
					onTheCustomerUnloadingPointObjectPage: CustomerUnloadingPointObjectPage
                }
            },
            opaJourney.run
        );
    }
);