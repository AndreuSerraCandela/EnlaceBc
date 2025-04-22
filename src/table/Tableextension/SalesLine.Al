tableextension 90102 SalesLineExtension extends "Sales Line"
{
    fields
    {
        field(50100; "Apply REBU"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(50101; "Valor Compra"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                UpdateVATAmounts();
            end;
        }
        field(50102; "IMEI"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "IMEI2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}
tableextension 90105 VatAmoutLine extends "Vat Amount Line"
{
    fields
    {
        field(50100; "Apply REBU"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Valor Compra"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
}
tableextension 90108 SalesInvLineExtension extends "Sales Invoice Line"
{
    fields
    {
        field(50100; "Apply REBU"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(50101; "Valor Compra"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50102; "IMEI"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "IMEI2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}
tableextension 90107 SalesCrLineExtension extends "Sales Cr.Memo Line"
{
    fields
    {
        field(50100; "Apply REBU"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(50101; "Valor Compra"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(50102; "IMEI"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "IMEI2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}
tableextension 90109 SalesHeaderExtension extends "Sales Header"
{
    fields
    {

        field(50101; "Importe total"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
}