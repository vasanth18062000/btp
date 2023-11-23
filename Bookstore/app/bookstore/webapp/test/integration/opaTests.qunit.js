sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bookstore/bookstore/test/integration/FirstJourney',
		'bookstore/bookstore/test/integration/pages/BooksList',
		'bookstore/bookstore/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bookstore/bookstore') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);