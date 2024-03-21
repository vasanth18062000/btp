sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    const CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'speedcustomer.customer',
            componentId: 'CustomerObjectPage',
            contextPath: '/Customer'
        },
        CustomPageDefinitions
    );
});