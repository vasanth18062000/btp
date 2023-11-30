sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/businesspartner/test/integration/FirstJourney',
		'ns/businesspartner/test/integration/pages/IncidentsList',
		'ns/businesspartner/test/integration/pages/IncidentsObjectPage',
		'ns/businesspartner/test/integration/pages/Incidents_conversationObjectPage'
    ],
    function(JourneyRunner, opaJourney, IncidentsList, IncidentsObjectPage, Incidents_conversationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/businesspartner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIncidentsList: IncidentsList,
					onTheIncidentsObjectPage: IncidentsObjectPage,
					onTheIncidents_conversationObjectPage: Incidents_conversationObjectPage
                }
            },
            opaJourney.run
        );
    }
);