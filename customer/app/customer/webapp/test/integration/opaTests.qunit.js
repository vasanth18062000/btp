sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/customer/test/integration/FirstJourney',
		'ns/customer/test/integration/pages/customerList',
		'ns/customer/test/integration/pages/customerObjectPage'
    ],
    function(JourneyRunner, opaJourney, customerList, customerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/customer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecustomerList: customerList,
					onThecustomerObjectPage: customerObjectPage
                }
            },
            opaJourney.run
        );
    }
);