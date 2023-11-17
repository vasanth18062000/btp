sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/project1/test/integration/FirstJourney',
		'ns/project1/test/integration/pages/bookNameList',
		'ns/project1/test/integration/pages/bookNameObjectPage'
    ],
    function(JourneyRunner, opaJourney, bookNameList, bookNameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebookNameList: bookNameList,
					onThebookNameObjectPage: bookNameObjectPage
                }
            },
            opaJourney.run
        );
    }
);