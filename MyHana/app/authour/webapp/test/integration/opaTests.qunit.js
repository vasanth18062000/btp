sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/authour/test/integration/FirstJourney',
		'ns/authour/test/integration/pages/AuthorsList',
		'ns/authour/test/integration/pages/AuthorsObjectPage',
		'ns/authour/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, AuthorsList, AuthorsObjectPage, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/authour') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAuthorsList: AuthorsList,
					onTheAuthorsObjectPage: AuthorsObjectPage,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);