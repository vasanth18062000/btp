sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/project1/test/integration/FirstJourney',
		'ns/project1/test/integration/pages/StudentList',
		'ns/project1/test/integration/pages/StudentObjectPage',
		'ns/project1/test/integration/pages/ContactObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage, ContactObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage,
					onTheContactObjectPage: ContactObjectPage
                }
            },
            opaJourney.run
        );
    }
);