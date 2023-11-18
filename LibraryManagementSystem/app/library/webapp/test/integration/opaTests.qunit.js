sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/library/test/integration/FirstJourney',
		'ns/library/test/integration/pages/BookList',
		'ns/library/test/integration/pages/BookObjectPage'
    ],
    function(JourneyRunner, opaJourney, BookList, BookObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/library') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBookList: BookList,
					onTheBookObjectPage: BookObjectPage
                }
            },
            opaJourney.run
        );
    }
);