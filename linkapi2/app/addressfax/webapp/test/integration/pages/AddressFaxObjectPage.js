sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'api.addressfax',
            componentId: 'AddressFaxObjectPage',
            contextPath: '/AddressFax'
        },
        CustomPageDefinitions
    );
});