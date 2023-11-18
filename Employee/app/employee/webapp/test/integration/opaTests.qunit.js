sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/employee/test/integration/FirstJourney',
		'ns/employee/test/integration/pages/EmpList',
		'ns/employee/test/integration/pages/EmpObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmpList, EmpObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/employee') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmpList: EmpList,
					onTheEmpObjectPage: EmpObjectPage
                }
            },
            opaJourney.run
        );
    }
);