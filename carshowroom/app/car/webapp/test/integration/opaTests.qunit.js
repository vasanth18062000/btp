sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/car/test/integration/FirstJourney',
		'ns/car/test/integration/pages/carsList',
		'ns/car/test/integration/pages/carsObjectPage',
		'ns/car/test/integration/pages/ModelVarientObjectPage'
    ],
    function(JourneyRunner, opaJourney, carsList, carsObjectPage, ModelVarientObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/car') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecarsList: carsList,
					onThecarsObjectPage: carsObjectPage,
					onTheModelVarientObjectPage: ModelVarientObjectPage
                }
            },
            opaJourney.run
        );
    }
);