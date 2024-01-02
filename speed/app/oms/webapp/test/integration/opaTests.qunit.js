sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/oms/test/integration/FirstJourney',
		'ns/oms/test/integration/pages/CustomerList',
		'ns/oms/test/integration/pages/CustomerObjectPage',
		'ns/oms/test/integration/pages/CartObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage, CartObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/oms') + '/index.html'
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