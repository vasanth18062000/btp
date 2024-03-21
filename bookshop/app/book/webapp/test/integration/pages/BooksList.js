sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    const CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'bookreview.book',
            componentId: 'BooksList',
            contextPath: '/Books'
        },
        CustomPageDefinitions
    );
});