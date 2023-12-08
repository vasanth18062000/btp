sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/bppartner/test/integration/FirstJourney',
		'ns/bppartner/test/integration/pages/BusinessPartnerList',
		'ns/bppartner/test/integration/pages/BusinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerList, BusinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/bppartner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnerList: BusinessPartnerList,
					onTheBusinessPartnerObjectPage: BusinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);