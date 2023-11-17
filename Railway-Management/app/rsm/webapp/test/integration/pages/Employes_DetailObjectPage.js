sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'rs.rsm',
            componentId: 'Employes_DetailObjectPage',
            contextPath: '/Employes_Detail'
        },
        CustomPageDefinitions
    );
});