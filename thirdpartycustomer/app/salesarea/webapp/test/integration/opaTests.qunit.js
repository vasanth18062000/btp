sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/salesarea/test/integration/FirstJourney',
		'ns/salesarea/test/integration/pages/CustomerSalesAreaList',
		'ns/salesarea/test/integration/pages/CustomerSalesAreaObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerSalesAreaList, CustomerSalesAreaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/salesarea') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerSalesAreaList: CustomerSalesAreaList,
					onTheCustomerSalesAreaObjectPage: CustomerSalesAreaObjectPage
                }
            },
            opaJourney.run
        );
    }
);