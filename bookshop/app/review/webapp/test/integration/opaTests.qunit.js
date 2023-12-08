sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'review/review/test/integration/FirstJourney',
		'review/review/test/integration/pages/ReviewsList',
		'review/review/test/integration/pages/ReviewsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ReviewsList, ReviewsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('review/review') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheReviewsList: ReviewsList,
					onTheReviewsObjectPage: ReviewsObjectPage
                }
            },
            opaJourney.run
        );
    }
);