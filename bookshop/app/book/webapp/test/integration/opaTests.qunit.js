sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bookreview/book/test/integration/FirstJourney',
		'bookreview/book/test/integration/pages/BooksList',
		'bookreview/book/test/integration/pages/BooksObjectPage',
		'bookreview/book/test/integration/pages/ReviewsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage, ReviewsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bookreview/book') + '/index.html'
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