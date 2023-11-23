sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'book.product',
            componentId: 'CategoriesObjectPage',
            contextPath: '/Products/Categories'
        },
        CustomPageDefinitions
    );
});