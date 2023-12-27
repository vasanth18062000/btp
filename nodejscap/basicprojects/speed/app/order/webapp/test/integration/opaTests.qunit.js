sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/order/test/integration/FirstJourney',
		'ns/order/test/integration/pages/OrderList',
		'ns/order/test/integration/pages/OrderObjectPage',
		'ns/order/test/integration/pages/OrderEntryObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderList, OrderObjectPage, OrderEntryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/order') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderList: OrderList,
					onTheOrderObjectPage: OrderObjectPage,
					onTheOrderEntryObjectPage: OrderEntryObjectPage
                }
            },
            opaJourney.run
        );
    }
);