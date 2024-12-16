/// <summary>
/// PageExtension GlEntry (ID 90101) extends Record 20.
/// </summary>
pageextension 90103 GlPlan extends 16
{
    actions
    {
        addlast("A&ccount")
        {
            action(Conciliacion)
            {
                ApplicationArea = All;
                Image = Reconcile;
                trigger OnAction()
                var
                    GlEntry: Record 17;
                begin
                    GlEntry.SetRange("G/L Account No.", Rec."No.");
                    Page.RunModal(Page::"Ficha conciliacion cuentas", GlEntry);
                end;
            }
        }
    }
}