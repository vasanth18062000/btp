sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/bpaddress/test/integration/FirstJourney',
		'api/bpaddress/test/integration/pages/Address_PartnerList',
		'api/bpaddress/test/integration/pages/Address_PartnerObjectPage',
		'api/bpaddress/test/integration/pages/AddressPhoneNumberObjectPage'
    ],
    function(JourneyRunner, opaJourney, Address_PartnerList, Address_PartnerObjectPage, AddressPhoneNumberObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/bpaddress') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAddress_PartnerList: Address_PartnerList,
					onTheAddress_PartnerObjectPage: Address_PartnerObjectPage,
					onTheAddressPhoneNumberObjectPage: AddressPhoneNumberObjectPage
                }
            },
            opaJourney.run
        );
    }
);