sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/client/test/integration/FirstJourney',
		'ns/client/test/integration/pages/ClientList',
		'ns/client/test/integration/pages/ClientObjectPage',
		'ns/client/test/integration/pages/ProjectObjectPage'
    ],
    function(JourneyRunner, opaJourney, ClientList, ClientObjectPage, ProjectObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/client') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheClientList: ClientList,
					onTheClientObjectPage: ClientObjectPage,
					onTheProjectObjectPage: ProjectObjectPage
                }
            },
            opaJourney.run
        );
    }
);