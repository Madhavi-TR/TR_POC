using { ztr_so_flow_demo as my } from '../db/schema.cds';

@path : '/service/ztr_so_flow_demoService'
service ztr_so_flow_demoService
{
    @readonly
    entity ZSAP_ORDER as
        projection on my.ZSAP_ORDER
        {
            Order_Id,
            Order_Itemno,
            Customer_No,
            Material,
            Asset_Id,
            Order_Status,
            Order_Date,
            Quote_Id.Quote_Id,
            Quote_Id.Quote_Status,
            Quote_Id.Opp_Id.Opp_Id,
            Quote_Id.Opp_Id.Opp_Status,
            Quote_Id.Opp_Id.Opp_Date,
            Quote_Id.Quote_Date,
            ZSAP_DELIVERY_TO_ORDER.Delivery_Id,
            ZSAP_DELIVERY_TO_ORDER.Delivery_Itemno,
            ZSAP_DELIVERY_TO_ORDER.Delivery_Status,
            ZSAP_DELIVERY_TO_ORDER.Delivery_Date,
            ZSAP_DELIVERY_TO_ORDER.ZSAP_INVOICE_TO_DELIVERY.Invoice_Id,
            ZSAP_DELIVERY_TO_ORDER.ZSAP_INVOICE_TO_DELIVERY.Invoice_Itemno,
            ZSAP_DELIVERY_TO_ORDER.ZSAP_INVOICE_TO_DELIVERY.Invoice_Status,
            ZSAP_DELIVERY_TO_ORDER.ZSAP_INVOICE_TO_DELIVERY.Invoice_Date
        };
}

annotate ztr_so_flow_demoService with @requires :
[
    'authenticated-user'
];
