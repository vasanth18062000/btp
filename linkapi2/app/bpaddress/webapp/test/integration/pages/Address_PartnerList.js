sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'api.bpaddress',
            componentId: 'Address_PartnerList',
            contextPath: '/Address_Partner'
        },
        CustomPageDefinitions
    );
});