sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'rs.rsm',
            componentId: 'Employes_DetailList.Employes_Detail',
            contextPath: '/Employes_Detail'
        },
        CustomPageDefinitions
    );
});