sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'customerspace/test/integration/FirstJourney',
		'customerspace/test/integration/pages/CustomerList',
		'customerspace/test/integration/pages/CustomerObjectPage',
		'customerspace/test/integration/pages/AddressObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, AddressObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('customerspace') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage,
					onTheAddressObjectPage: AddressObjectPage
                }
            },
            opaJourney.run
        );
    }
);