sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/businesspartner/test/integration/FirstJourney',
		'ns/businesspartner/test/integration/pages/BusinessPartnerList',
		'ns/businesspartner/test/integration/pages/BusinessPartnerObjectPage',
		'ns/businesspartner/test/integration/pages/bpdatacontrolObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerList, BusinessPartnerObjectPage, bpdatacontrolObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/businesspartner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnerList: BusinessPartnerList,
					onTheBusinessPartnerObjectPage: BusinessPartnerObjectPage,
					onThebpdatacontrolObjectPage: bpdatacontrolObjectPage
                }
            },
            opaJourney.run
        );
    }
);