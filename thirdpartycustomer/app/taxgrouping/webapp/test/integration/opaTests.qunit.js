sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/taxgrouping/test/integration/FirstJourney',
		'ns/taxgrouping/test/integration/pages/CustomerTaxGroupingList',
		'ns/taxgrouping/test/integration/pages/CustomerTaxGroupingObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerTaxGroupingList, CustomerTaxGroupingObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/taxgrouping') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerTaxGroupingList: CustomerTaxGroupingList,
					onTheCustomerTaxGroupingObjectPage: CustomerTaxGroupingObjectPage
                }
            },
            opaJourney.run
        );
    }
);