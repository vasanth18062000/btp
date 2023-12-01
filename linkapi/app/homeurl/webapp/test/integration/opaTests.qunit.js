sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/homeurl/test/integration/FirstJourney',
		'api/homeurl/test/integration/pages/AddressHomePageList',
		'api/homeurl/test/integration/pages/AddressHomePageObjectPage'
    ],
    function(JourneyRunner, opaJourney, AddressHomePageList, AddressHomePageObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/homeurl') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAddressHomePageList: AddressHomePageList,
					onTheAddressHomePageObjectPage: AddressHomePageObjectPage
                }
            },
            opaJourney.run
        );
    }
);