sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'companyview/test/integration/FirstJourney',
		'companyview/test/integration/pages/CompanyList',
		'companyview/test/integration/pages/CompanyObjectPage',
		'companyview/test/integration/pages/EmployeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanyList, CompanyObjectPage, EmployeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('companyview') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompanyList: CompanyList,
					onTheCompanyObjectPage: CompanyObjectPage,
					onTheEmployeeObjectPage: EmployeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);