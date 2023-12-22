sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.ladera.speed.cart',
            componentId: 'CartObjectPage',
            contextPath: '/Cart'
        },
        CustomPageDefinitions
    );
});