sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'rs/rsm/test/integration/FirstJourney',
		'rs/rsm/test/integration/pages/Employes_DetailList',
		'rs/rsm/test/integration/pages/Employes_DetailObjectPage'
    ],
    function(JourneyRunner, opaJourney, Employes_DetailList, Employes_DetailObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('rs/rsm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployes_DetailList: Employes_DetailList,
					onTheEmployes_DetailObjectPage: Employes_DetailObjectPage
                }
            },
            opaJourney.run
        );
    }
);