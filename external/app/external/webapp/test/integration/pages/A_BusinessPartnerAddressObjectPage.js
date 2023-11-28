sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ns.external',
            componentId: 'A_BusinessPartnerAddressObjectPage',
            contextPath: '/Customer/to_BusinessPartnerAddress'
        },
        CustomPageDefinitions
    );
});