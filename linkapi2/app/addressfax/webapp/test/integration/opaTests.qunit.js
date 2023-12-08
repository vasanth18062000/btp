sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/addressfax/test/integration/FirstJourney',
		'api/addressfax/test/integration/pages/AddressFaxList',
		'api/addressfax/test/integration/pages/AddressFaxObjectPage'
    ],
    function(JourneyRunner, opaJourney, AddressFaxList, AddressFaxObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/addressfax') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAddressFaxList: AddressFaxList,
					onTheAddressFaxObjectPage: AddressFaxObjectPage
                }
            },
            opaJourney.run
        );
    }
);