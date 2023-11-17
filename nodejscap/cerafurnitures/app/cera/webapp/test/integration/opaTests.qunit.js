sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/cera/test/integration/FirstJourney',
		'ns/cera/test/integration/pages/CustomerList',
		'ns/cera/test/integration/pages/CustomerObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/cera') + '/index.html'
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