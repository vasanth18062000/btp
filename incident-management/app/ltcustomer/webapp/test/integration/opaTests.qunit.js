sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/ltcustomer/test/integration/FirstJourney',
		'ns/ltcustomer/test/integration/pages/CustomersList',
		'ns/ltcustomer/test/integration/pages/CustomersObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomersList, CustomersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/ltcustomer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomersList: CustomersList,
					onTheCustomersObjectPage: CustomersObjectPage
                }
            },
            opaJourney.run
        );
    }
);