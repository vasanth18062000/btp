sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    const CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ns.customer',
            componentId: 'customerList',
            contextPath: '/customer'
        },
        CustomPageDefinitions
    );
});