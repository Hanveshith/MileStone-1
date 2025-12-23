sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ust.so.approval.salesorderapproval',
            componentId: 'A_SalesOrderObjectPage',
            contextPath: '/A_SalesOrder'
        },
        CustomPageDefinitions
    );
});