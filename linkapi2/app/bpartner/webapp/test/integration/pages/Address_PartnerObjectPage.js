sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'api.bpartner',
            componentId: 'Address_PartnerObjectPage',
            contextPath: '/Customer/to_BusinessPartnerAddress'
        },
        CustomPageDefinitions
    );
});