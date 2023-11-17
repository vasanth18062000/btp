sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedcus/customer/test/integration/FirstJourney',
		'speedcus/customer/test/integration/pages/CustomerList',
		'speedcus/customer/test/integration/pages/CustomerObjectPage',
		'speedcus/customer/test/integration/pages/OrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, OrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedcus/customer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage,
					onTheOrderObjectPage: OrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);