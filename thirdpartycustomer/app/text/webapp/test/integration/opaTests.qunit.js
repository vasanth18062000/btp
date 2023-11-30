sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/text/test/integration/FirstJourney',
		'ns/text/test/integration/pages/CustomerTextList',
		'ns/text/test/integration/pages/CustomerTextObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerTextList, CustomerTextObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/text') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerTextList: CustomerTextList,
					onTheCustomerTextObjectPage: CustomerTextObjectPage
                }
            },
            opaJourney.run
        );
    }
);