sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/bpemail/test/integration/FirstJourney',
		'api/bpemail/test/integration/pages/Email_PartnerList',
		'api/bpemail/test/integration/pages/Email_PartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, Email_PartnerList, Email_PartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/bpemail') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmail_PartnerList: Email_PartnerList,
					onTheEmail_PartnerObjectPage: Email_PartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);