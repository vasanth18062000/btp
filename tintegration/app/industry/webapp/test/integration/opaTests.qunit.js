sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/industry/test/integration/FirstJourney',
		'ns/industry/test/integration/pages/bupaIndustryList',
		'ns/industry/test/integration/pages/bupaIndustryObjectPage'
    ],
    function(JourneyRunner, opaJourney, bupaIndustryList, bupaIndustryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/industry') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebupaIndustryList: bupaIndustryList,
					onThebupaIndustryObjectPage: bupaIndustryObjectPage
                }
            },
            opaJourney.run
        );
    }
);