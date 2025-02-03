pageextension 90104 SalesInvSubformExt extends "Sales Invoice Subform"
{
    layout
    {
        addafter("Line Amount")
        {
            field("Valor Compra"; Rec."Valor Compra")
            {
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    DeltaUpdateTotals();
                end;

            }
        }
    }
}