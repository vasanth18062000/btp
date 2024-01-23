sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/company/test/integration/FirstJourney',
		'ns/company/test/integration/pages/CustomerCompanyList',
		'ns/company/test/integration/pages/CustomerCompanyObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerCompanyList, CustomerCompanyObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/company') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerCompanyList: CustomerCompanyList,
					onTheCustomerCompanyObjectPage: CustomerCompanyObjectPage
                }
            },
            opaJourney.run
        );
    }
);