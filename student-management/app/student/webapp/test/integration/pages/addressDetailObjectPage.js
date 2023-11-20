sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sm.student',
            componentId: 'addressDetailObjectPage',
            contextPath: '/StudentDetail/addressTypes'
        },
        CustomPageDefinitions
    );
});