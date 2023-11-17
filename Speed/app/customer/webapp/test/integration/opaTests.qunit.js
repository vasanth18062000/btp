sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedcustomer/customer/test/integration/FirstJourney',
		'speedcustomer/customer/test/integration/pages/CustomerList',
		'speedcustomer/customer/test/integration/pages/CustomerObjectPage',
		'speedcustomer/customer/test/integration/pages/CartObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, CartObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedcustomer/customer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage,
					onTheCartObjectPage: CartObjectPage
                }
            },
            opaJourney.run
        );
    }
);