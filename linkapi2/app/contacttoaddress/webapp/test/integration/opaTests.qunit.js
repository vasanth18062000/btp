sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/contacttoaddress/test/integration/FirstJourney',
		'api/contacttoaddress/test/integration/pages/BPContactToAddressList',
		'api/contacttoaddress/test/integration/pages/BPContactToAddressObjectPage',
		'api/contacttoaddress/test/integration/pages/Email_PartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BPContactToAddressList, BPContactToAddressObjectPage, Email_PartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/contacttoaddress') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBPContactToAddressList: BPContactToAddressList,
					onTheBPContactToAddressObjectPage: BPContactToAddressObjectPage,
					onTheEmail_PartnerObjectPage: Email_PartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);