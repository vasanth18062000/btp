sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    const CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'speedorder.order',
            componentId: 'OrderList',
            contextPath: '/Order'
        },
        CustomPageDefinitions
    );
});