/// <summary>
/// TableExtension G/L EntryKuara (ID 80146) extends Record G/L Entry.
/// </summary>
tableextension 90146 "G/L EntryKuara" extends "G/L Entry"
{
    fields
    {


        field(50201; "Importe a Conciliar"; Decimal) { Caption = 'Importe a conciliar'; }
        field(50202; "Pendiente"; Boolean) { }
        field(50203; "Importe pendiente"; Decimal) { }
        field(50204; "Usuario conciliacion"; CODE[50])
        {
            TableRelation = User;
        }
        field(50205; "Importe conciliado"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Mov. Conciliacion cuenta"."Importe conciliado" WHERE("Nº Mov." = FIELD("Entry No."), "Fecha conciliacion" = FIELD("Filtro fecha conciliación")));
        }
        field(80010; "Filtro fecha conciliación"; Date)
        {
            FieldClass = FlowFilter;

        }
        field(50000; "Marca"; CODE[1]) { }

    }

}