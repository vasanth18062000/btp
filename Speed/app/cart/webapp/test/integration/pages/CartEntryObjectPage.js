sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'speedcart.cart',
            componentId: 'CartEntryObjectPage',
            contextPath: '/Cart/cartEntries'
        },
        CustomPageDefinitions
    );
});