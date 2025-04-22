/// <summary>
/// PageExtension SalesSetup (ID 90100) extends Record Sales  Receivables Setup.
/// </summary>
pageextension 90100 SalesSetup extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field(CustomerTemplate; Rec.CustomerTemplate)
            {
                ApplicationArea = All;
            }
            field("Cuenta Vta x defecto"; Rec."Cuenta Vta x defecto")
            {
                ApplicationArea = All;
            }
        }
    }
}
pageextension 90101 PurchSetup extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Vendor Nos.")
        {
            field(VendorTemplate; Rec.VendorTemplate)
            {
                ApplicationArea = All;
            }
        }
    }
}
pageextension 90102 InvSetup extends 461
{
    layout
    {
        addafter("Item Nos.")
        {
            field(ItemTemplate; Rec.ItemTemplate)
            {
                ApplicationArea = All;
            }
        }
    }
}