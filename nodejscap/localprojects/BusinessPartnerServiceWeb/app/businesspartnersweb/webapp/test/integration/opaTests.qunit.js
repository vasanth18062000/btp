sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/businesspartnersweb/test/integration/FirstJourney',
		'ns/businesspartnersweb/test/integration/pages/BusinessPartnerList',
		'ns/businesspartnersweb/test/integration/pages/BusinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerList, BusinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/businesspartnersweb') + '/index.html'
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