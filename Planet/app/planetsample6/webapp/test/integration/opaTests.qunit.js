sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/planetsample6/test/integration/FirstJourney',
		'ns/planetsample6/test/integration/pages/SolarSystemList',
		'ns/planetsample6/test/integration/pages/SolarSystemObjectPage',
		'ns/planetsample6/test/integration/pages/PlanetObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolarSystemList, SolarSystemObjectPage, PlanetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/planetsample6') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolarSystemList: SolarSystemList,
					onTheSolarSystemObjectPage: SolarSystemObjectPage,
					onThePlanetObjectPage: PlanetObjectPage
                }
            },
            opaJourney.run
        );
    }
);