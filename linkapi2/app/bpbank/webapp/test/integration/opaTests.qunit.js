sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/bpbank/test/integration/FirstJourney',
		'api/bpbank/test/integration/pages/BusinessPartnerBankList',
		'api/bpbank/test/integration/pages/BusinessPartnerBankObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerBankList, BusinessPartnerBankObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/bpbank') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnerBankList: BusinessPartnerBankList,
					onTheBusinessPartnerBankObjectPage: BusinessPartnerBankObjectPage
                }
            },
            opaJourney.run
        );
    }
);