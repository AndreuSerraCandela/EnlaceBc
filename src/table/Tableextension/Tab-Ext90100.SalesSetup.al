tableextension 90100 SalesSetup extends "Sales & Receivables Setup"
{
    fields
    {
        field(90100; CustomerTemplate; Code[20])
        {
            Caption = 'CustomerTemplate';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Templ.".Code;
        }
    }
}
tableextension 90101 PurchSetup extends 312
{
    fields
    {
        field(90100; VendorTemplate; Code[20])
        {
            Caption = 'VendorTemplate';
            DataClassification = ToBeClassified;
            TableRelation = "Vendor Templ.".Code;
        }
    }
}
tableextension 90103 ITemSetup extends 313
{
    fields
    {
        field(90100; ItemTemplate; Code[20])
        {
            Caption = 'ItemTemplate';
            DataClassification = ToBeClassified;
            TableRelation = "Item Templ.".Code;
        }
    }
}