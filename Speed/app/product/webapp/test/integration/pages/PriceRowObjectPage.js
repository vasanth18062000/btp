sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'speedpro.product',
            componentId: 'PriceRowObjectPage',
            contextPath: '/Products/price'
        },
        CustomPageDefinitions
    );
});