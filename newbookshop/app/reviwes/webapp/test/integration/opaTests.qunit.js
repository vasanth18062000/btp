sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/reviwes/test/integration/FirstJourney',
		'ns/reviwes/test/integration/pages/ReviewsList',
		'ns/reviwes/test/integration/pages/ReviewsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ReviewsList, ReviewsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/reviwes') + '/index.html'
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