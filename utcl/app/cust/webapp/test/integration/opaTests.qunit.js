sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/cust/test/integration/FirstJourney',
		'ns/cust/test/integration/pages/CustomerList',
		'ns/cust/test/integration/pages/CustomerObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/cust') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerList: CustomerList,
					onTheCustomerObjectPage: CustomerObjectPage
                }
            },
            opaJourney.run
        );
    }
);