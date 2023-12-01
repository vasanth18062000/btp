sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'api.bpaddress',
            componentId: 'AddressPhoneNumberObjectPage',
            contextPath: '/Address_Partner/to_PhoneNumber'
        },
        CustomPageDefinitions
    );
});