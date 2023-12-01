sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/bpartner/test/integration/FirstJourney',
		'api/bpartner/test/integration/pages/CustomerList',
		'api/bpartner/test/integration/pages/CustomerObjectPage',
		'api/bpartner/test/integration/pages/Address_PartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, Address_PartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/bpartner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage,
					onTheAddress_PartnerObjectPage: Address_PartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);