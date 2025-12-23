sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ust/so/approval/salesorderapproval/test/integration/pages/A_SalesOrderList",
	"ust/so/approval/salesorderapproval/test/integration/pages/A_SalesOrderObjectPage"
], function (JourneyRunner, A_SalesOrderList, A_SalesOrderObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ust/so/approval/salesorderapproval') + '/test/flp.html#app-preview',
        pages: {
			onTheA_SalesOrderList: A_SalesOrderList,
			onTheA_SalesOrderObjectPage: A_SalesOrderObjectPage
        },
        async: true
    });

    return runner;
});

