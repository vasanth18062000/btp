sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/banklistweb/test/integration/FirstJourney',
		'ns/banklistweb/test/integration/pages/BankDetailList',
		'ns/banklistweb/test/integration/pages/BankDetailObjectPage'
    ],
    function(JourneyRunner, opaJourney, BankDetailList, BankDetailObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/banklistweb') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBankDetailList: BankDetailList,
					onTheBankDetailObjectPage: BankDetailObjectPage
                }
            },
            opaJourney.run
        );
    }
);