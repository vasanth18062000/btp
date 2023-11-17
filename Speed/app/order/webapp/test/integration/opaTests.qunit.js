sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'speedord/order/test/integration/FirstJourney',
		'speedord/order/test/integration/pages/OrderList',
		'speedord/order/test/integration/pages/OrderObjectPage',
		'speedord/order/test/integration/pages/OrderEntryObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderList, OrderObjectPage, OrderEntryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('speedord/order') + '/index.html'
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