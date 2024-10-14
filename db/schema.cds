namespace ztr_so_flow_demo;

entity ZELOQUA
{
    key Opp_Id : String(10);
    Customer_no : String(20);
    Material : String(30);
    Opp_Status : String(10);
    Opp_Date : Date not null;
}

entity ZCONGA
{
    key Quote_Id : String(10);
    key Quote_Itemno : String(4);
    Customer_No : String(20) not null;
    Material : String(30) not null;
    Asset_Id : String(10) not null;
    Quote_Status : String(10) not null;
    Opp_Id : Association to one ZELOQUA;
    ZSAP_ORDER_TO_CONGA : Association to one ZSAP_ORDER;
    Quote_Date : Date not null;
}

entity ZSAP_ORDER
{
    key Order_Id : String(10);
    key Order_Itemno : String(4);
    Customer_No : String(20) not null;
    Material : String(30) not null;
    Asset_Id : String(10) not null;
    Order_Status : many String(10);
    Quote_Id : Association to one ZCONGA on Quote_Id.ZSAP_ORDER_TO_CONGA = $self;
    Order_Date : Date not null;
    ZSAP_DELIVERY_TO_ORDER : Association to one ZSAP_DELIVERY;
}

entity ZSAP_DELIVERY
{
    key Delivery_Id : String(10);
    key Delivery_Itemno : String(10);
    Customer_No : String(100) not null;
    Material : String(30) not null;
    Asset_Id : String(100) not null;
    Delivery_Status : String(100) not null;
    Delivery_Date : Date not null;
    Order_Id : Association to one ZSAP_ORDER on Order_Id.ZSAP_DELIVERY_TO_ORDER = $self;
    ZSAP_INVOICE_TO_DELIVERY : Association to one ZSAP_INVOICE;
}

entity ZSAP_INVOICE
{
    key Invoice_Id : String(10);
    key Invoice_Itemno : String(4);
    Customer_No : String(20) not null;
    Material : String(30) not null;
    Asset_Id : String(10) not null;
    Invoice_Status : String(10) not null;
    key Invoice_Date : Date;
    Delivery_Id : Association to one ZSAP_DELIVERY on Delivery_Id.ZSAP_INVOICE_TO_DELIVERY = $self;
    ZBILL_TRUST_TO_INVOICE : Association to one ZBILL_TRUST;
    ZHIGHRADIUS_TO_INVOICE : Association to one ZHIGH_RADIUS;
}

entity ZBILL_TRUST
{
    key Asset_Id : String(10);
    Invoice_Id : Association to one ZSAP_INVOICE on Invoice_Id.ZBILL_TRUST_TO_INVOICE = $self;
    BT_Status : String(10);
    Invoice_Itemno : Association to one ZSAP_INVOICE on Invoice_Itemno.ZBILL_TRUST_TO_INVOICE = $self;
    BT_Date : Date;
}

entity ZHIGH_RADIUS
{
    key Asset_Id : String(10);
    Invoice_Id : Association to one ZSAP_INVOICE on Invoice_Id.ZHIGHRADIUS_TO_INVOICE = $self;
    Invoice_Itemno : Association to one ZSAP_INVOICE on Invoice_Itemno.ZHIGHRADIUS_TO_INVOICE = $self;
    HR_Status : String(10) not null;
    HR_Date : Date not null;
}

