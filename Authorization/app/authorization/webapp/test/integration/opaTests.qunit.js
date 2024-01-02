sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/authorization/test/integration/FirstJourney',
		'ns/authorization/test/integration/pages/EmployeeList',
		'ns/authorization/test/integration/pages/EmployeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/authorization') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);