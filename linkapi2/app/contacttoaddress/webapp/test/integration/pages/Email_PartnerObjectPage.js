sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'api.contacttoaddress',
            componentId: 'Email_PartnerObjectPage',
            contextPath: '/BPContactToAddress/to_EmailAddress'
        },
        CustomPageDefinitions
    );
});