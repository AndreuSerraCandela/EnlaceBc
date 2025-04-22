tableextension 90104 VatProdGroupExtension extends "VAT Product Posting Group"
{
    fields
    {
        field(50100; "Rebu"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Grupo equivalente"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}
tableextension 90106 VatPostingSetup extends "VAT Posting Setup"
{
    fields
    {
        field(50100; "Rebu"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
}
//exstendel la página asiciada a la tabla
pageextension 90105 "VATProductGroups" extends "VAT Product Posting Groups"
{
    layout
    {
        addlast(Control1)
        {
            field(Rebu; Rec.Rebu)
            {
                ApplicationArea = All;
                ToolTip = 'Indica si el grupo de IVA aplica REBU';
            }
            field("Grupo equivalente"; Rec."Grupo equivalente")
            {
                ApplicationArea = All;
                ToolTip = 'Indica el grupo de IVA equivalente para la importación excel';
            }
        }
    }
}
pageextension 90106 "VATPosting" extends "VAT Posting Setup"
{
    layout
    {
        addlast(Control1)
        {
            field(Rebu; Rec.Rebu)
            {
                ApplicationArea = All;
                ToolTip = 'Indica si el grupo de IVA aplica REBU';
            }
        }
    }
}
