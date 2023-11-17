sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedorder/order/test/integration/FirstJourney',
		'speedorder/order/test/integration/pages/OrderList',
		'speedorder/order/test/integration/pages/OrderObjectPage',
		'speedorder/order/test/integration/pages/OrderEntryObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderList, OrderObjectPage, OrderEntryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedorder/order') + '/index.html'
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