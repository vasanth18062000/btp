sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/phonenumber/test/integration/FirstJourney',
		'api/phonenumber/test/integration/pages/AddressPhoneNumberList',
		'api/phonenumber/test/integration/pages/AddressPhoneNumberObjectPage'
    ],
    function(JourneyRunner, opaJourney, AddressPhoneNumberList, AddressPhoneNumberObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/phonenumber') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAddressPhoneNumberList: AddressPhoneNumberList,
					onTheAddressPhoneNumberObjectPage: AddressPhoneNumberObjectPage
                }
            },
            opaJourney.run
        );
    }
);