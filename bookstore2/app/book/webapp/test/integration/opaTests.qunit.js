sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bs/book/test/integration/FirstJourney',
		'bs/book/test/integration/pages/BooksList',
		'bs/book/test/integration/pages/BooksObjectPage',
		'bs/book/test/integration/pages/ReviewsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage, ReviewsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bs/book') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage,
					onTheReviewsObjectPage: ReviewsObjectPage
                }
            },
            opaJourney.run
        );
    }
);