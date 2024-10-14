using ztr_so_flow_demoService as service from '../../srv/service';
annotate service.ZSAP_ORDER with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Order_Id',
                Value : Order_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Itemno',
                Value : Order_Itemno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer_No',
                Value : Customer_No,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Material',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Asset_Id',
                Value : Asset_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Status',
                Value : Order_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Date',
                Value : Order_Date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Id',
                Value : Quote_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Id',
                Value : Opp_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Status',
                Value : Opp_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Date',
                Value : Opp_Date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Status',
                Value : Quote_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Date',
                Value : Quote_Date,
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.ConnectedFields#connected',
                Label : 'Invoice No',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Order_Itemno',
            Value : Order_Itemno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Order_Id',
            Value : Order_Id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer_No',
            Value : Customer_No,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Material',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Asset_Id',
            Value : Asset_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Opp_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Quote_Id,
        },
    ],
    UI.SelectionFields : [
        Customer_No,
        Asset_Id,
        Delivery_Id,
        Invoice_Id,
        Order_Id,
        Opp_Id,
        Quote_Id,
    ],
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{Invoice_Id} {Invoice_Itemno}',
        Data : {
            $Type : 'Core.Dictionary',
            Invoice_Id : {
                $Type : 'UI.DataField',
                Value : Invoice_Id,
            },
            Invoice_Itemno : {
                $Type : 'UI.DataField',
                Value : Invoice_Itemno,
            },
        },
    },
    UI.LineItem #tableMacro : [
    ],
    UI.LineItem #tableMacro1 : [
    ],
    UI.LineItem #tableMacro2 : [
    ],
    UI.LineItem #tableMacro3 : [
        {
            $Type : 'UI.DataField',
            Value : Delivery_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Status,
            Label : 'Delivery_Status',
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Status,
            Label : 'Invoice_Status',
        },
    ],
);

annotate service.ZSAP_ORDER with {
    Customer_No @Common.Label : 'Customer_No'
};

annotate service.ZSAP_ORDER with {
    Asset_Id @Common.Label : 'Asset_Id'
};

annotate service.ZSAP_ORDER with {
    Delivery_Id @Common.Label : 'Delivery_Id'
};

annotate service.ZSAP_ORDER with {
    Invoice_Id @Common.Label : 'Invoice_Id'
};

annotate service.ZSAP_ORDER with {
    Order_Id @Common.Label : 'Order_Id'
};

annotate service.ZSAP_ORDER with {
    Opp_Id @Common.Label : 'Opp_Id'
};

annotate service.ZSAP_ORDER with {
    Quote_Id @Common.Label : 'Quote_Id'
};

