sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'api/contactfunctionanddept/test/integration/FirstJourney',
		'api/contactfunctionanddept/test/integration/pages/BPContactToFuncAndDeptList',
		'api/contactfunctionanddept/test/integration/pages/BPContactToFuncAndDeptObjectPage'
    ],
    function(JourneyRunner, opaJourney, BPContactToFuncAndDeptList, BPContactToFuncAndDeptObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('api/contactfunctionanddept') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBPContactToFuncAndDeptList: BPContactToFuncAndDeptList,
					onTheBPContactToFuncAndDeptObjectPage: BPContactToFuncAndDeptObjectPage
                }
            },
            opaJourney.run
        );
    }
);