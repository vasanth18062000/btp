sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/customer/test/integration/FirstJourney',
		'ns/customer/test/integration/pages/CustomerList',
		'ns/customer/test/integration/pages/CustomerObjectPage',
		'ns/customer/test/integration/pages/AddressObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, AddressObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/customer') + '/index.html'
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