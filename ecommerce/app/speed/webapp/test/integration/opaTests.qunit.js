sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/ladera/speed/test/integration/FirstJourney',
		'com/ladera/speed/test/integration/pages/CustomerList',
		'com/ladera/speed/test/integration/pages/CustomerObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerList, CustomerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/ladera/speed') + '/index.html'
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