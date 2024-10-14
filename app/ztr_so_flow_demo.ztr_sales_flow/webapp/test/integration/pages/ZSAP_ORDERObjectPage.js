sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ztrsoflowdemo.ztrsalesflow',
            componentId: 'ZSAP_ORDERObjectPage',
            contextPath: '/ZSAP_ORDER'
        },
        CustomPageDefinitions
    );
});