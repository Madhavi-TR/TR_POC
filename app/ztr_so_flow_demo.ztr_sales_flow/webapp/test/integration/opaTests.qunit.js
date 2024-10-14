sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ztrsoflowdemo/ztrsalesflow/test/integration/FirstJourney',
		'ztrsoflowdemo/ztrsalesflow/test/integration/pages/ZSAP_ORDERList',
		'ztrsoflowdemo/ztrsalesflow/test/integration/pages/ZSAP_ORDERObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZSAP_ORDERList, ZSAP_ORDERObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ztrsoflowdemo/ztrsalesflow') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZSAP_ORDERList: ZSAP_ORDERList,
					onTheZSAP_ORDERObjectPage: ZSAP_ORDERObjectPage
                }
            },
            opaJourney.run
        );
    }
);