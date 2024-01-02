sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'salesdetails',
            componentId: 'SalesHeadersObjectPage',
            contextPath: '/SalesHeaders'
        },
        CustomPageDefinitions
    );
});