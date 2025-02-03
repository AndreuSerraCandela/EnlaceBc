pageextension 90107 "Sales Invoice Header Ext" extends "Sales Invoice"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("Name"; Nombre)
            {
                Caption = 'Nombre Cliente';
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    Rec."Sell-to Customer Name" := Nombre;
                end;
            }


        }
    }
    var
        Nombre: Text[50];

    trigger OnAfterGetRecord()
    begin
        Nombre := Rec."Sell-to Customer Name";
    end;
}