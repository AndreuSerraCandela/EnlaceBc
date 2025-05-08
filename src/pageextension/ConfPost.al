pageextension 90147 ConfSetup extends "General Posting Setup"
{
    layout
    {
        addafter("Sales Account")
        {
            field("Cta. Gasto Rebu"; Rec."Cta. Gasto Rebu")
            {
                ApplicationArea = All;
                ToolTip = 'Cuenta de gasto para el REBU';
            }
        }

    }
}
pageextension 90148 "ConfSetupCard" extends "General Posting Setup Card"
{
    layout
    {
        addafter("Sales Account")
        {
            field("Cta. Gasto Rebu"; Rec."Cta. Gasto Rebu")
            {
                ApplicationArea = All;
                ToolTip = 'Cuenta de gasto para el REBU';
            }
        }

    }
}