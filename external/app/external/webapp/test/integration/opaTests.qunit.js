sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/external/test/integration/FirstJourney',
		'ns/external/test/integration/pages/CustomerList',
		'ns/external/test/integration/pages/CustomerObjectPage',
		'ns/external/test/integration/pages/A_BusinessPartnerAddressObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, A_BusinessPartnerAddressObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/external') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage,
					onTheA_BusinessPartnerAddressObjectPage: A_BusinessPartnerAddressObjectPage
                }
            },
            opaJourney.run
        );
    }
);