sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sm/student/test/integration/FirstJourney',
		'sm/student/test/integration/pages/StudentDetailList',
		'sm/student/test/integration/pages/StudentDetailObjectPage',
		'sm/student/test/integration/pages/addressDetailObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentDetailList, StudentDetailObjectPage, addressDetailObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sm/student') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentDetailList: StudentDetailList,
					onTheStudentDetailObjectPage: StudentDetailObjectPage,
					onTheaddressDetailObjectPage: addressDetailObjectPage
                }
            },
            opaJourney.run
        );
    }
);