sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    const CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'speedorder.order',
            componentId: 'OrderObjectPage',
            contextPath: '/Order'
        },
        CustomPageDefinitions
    );
});