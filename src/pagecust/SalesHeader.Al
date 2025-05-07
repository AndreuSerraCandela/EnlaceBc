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
pageextension 90108 "Sales Invoices Ext" extends "Sales Invoice List"
{
    actions
    {
        addfirst(Processing)
        {
            action(ImportExcel)
            {
                Caption = 'Importar Excel';
                ApplicationArea = All;
                Image = ImportExcel;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TempExcelBuffer: Record "Excel Buffer" temporary;
                    FileName: Text;
                    SheetName: Text;
                    RowNo: Integer;
                    InStream: InStream;
                    SalesHeader: Record "Sales Header";
                    SalesLine: Record "Sales Line";
                    CurrentInvoiceNo: Text;
                    LineNo: Integer;
                    Customer: Record Customer;
                    NoSeriesMgt: Codeunit "No. Series";
                    SalesSetup: Record "Sales & Receivables Setup";
                    CustomerTempl: Record "Customer Templ.";
                    CustomerTemplMgt: Codeunit "Customer Templ. Mgt.";
                    VatProdGroup: Record "VAT Product Posting Group";
                begin
                    if not UploadIntoStream('Importar Excel', '', 'Excel Files|*.xlsx', FileName, InStream) then
                        exit;

                    SheetName := TempExcelBuffer.SelectSheetsNameStream(InStream);
                    TempExcelBuffer.OpenBookStream(InStream, SheetName);
                    TempExcelBuffer.ReadSheet();

                    // Skip header row
                    RowNo := 2;
                    repeat
                        TempExcelBuffer.SetRange("Row No.", RowNo);
                        if TempExcelBuffer.FindFirst() then begin
                            // Columns: Nombre | Apellidos | NIF | Factura | Fecha Factura | Base Imponible | Impuesto | Total Impuesto | Total Factura | Forma pago | Pedido | ID Pedido | Producto
                            TempExcelBuffer.Get(RowNo, 4); // Columna Factura
                            if CurrentInvoiceNo <> TempExcelBuffer."Cell Value as Text" then begin
                                CurrentInvoiceNo := TempExcelBuffer."Cell Value as Text";

                                // Create new sales header
                                SalesHeader.Init();
                                SalesHeader."Document Type" := SalesHeader."Document Type"::Invoice;

                                // Get number series
                                SalesSetup.Get();
                                SalesHeader."No." := NoSeriesMgt.GetNextNo(SalesSetup."Order Nos.", WorkDate(), true);

                                // Get customer data
                                TempExcelBuffer.Get(RowNo, 3); // NIF
                                Customer.SetRange("VAT Registration No.", TempExcelBuffer."Cell Value as Text");
                                if Customer.FindFirst() then
                                    SalesHeader.Validate("Sell-to Customer No.", Customer."No.")
                                else begin
                                    // Create new customer using template
                                    Customer.Init();
                                    Customer."No." := NoSeriesMgt.GetNextNo(SalesSetup."Customer Nos.", Today, true);
                                    Customer.Insert(true); // Insertar usando la plantilla por defecto
                                    TempExcelBuffer.Get(RowNo, 1); // Nombre
                                    Customer.Validate(Name, TempExcelBuffer."Cell Value as Text");
                                    TempExcelBuffer.Get(RowNo, 2); // Apellidos
                                    Customer.Validate("Name 2", TempExcelBuffer."Cell Value as Text");
                                    TempExcelBuffer.Get(RowNo, 3); // NIF
                                    Customer."VAT Registration No." := TempExcelBuffer."Cell Value as Text"; // NIF
                                    SalesSetup.TestField(CustomerTemplate);
                                    CustomerTempl.Get(SalesSetup.CustomerTemplate);
                                    CustomerTemplMgt.ApplyCustomerTemplate(Customer, CustomerTempl);
                                    Customer.Modify(true);

                                    SalesHeader.Validate("Sell-to Customer No.", Customer."No.");
                                end;

                                // Set invoice date
                                TempExcelBuffer.Get(RowNo, 5); // Fecha Factura
                                Evaluate(SalesHeader."Posting Date", CopyStr(TempExcelBuffer."Cell Value as Text", 1, 10));
                                // Set order reference from column K (Pedido)
                                TempExcelBuffer.Get(RowNo, 11); // Columna Pedido
                                SalesHeader.Validate("Your Reference", TempExcelBuffer."Cell Value as Text");
                                // Set Posting Description from Column D
                                TempExcelBuffer.Get(RowNo, 4); // Columna Factura
                                SalesHeader.Validate("Posting Description", TempExcelBuffer."Cell Value as Text");
                                SalesHeader.Insert(true);
                                SalesHeader."Posting Description" := TempExcelBuffer."Cell Value as Text";
                                SalesHeader.Modify();
                                LineNo := 10000;
                            end;

                            // Create sales line
                            SalesLine.Init();
                            SalesLine."Document Type" := SalesHeader."Document Type";
                            SalesLine."Document No." := SalesHeader."No.";
                            SalesLine."Line No." := LineNo;
                            SalesLine.Type := SalesLine.Type::"G/L Account";
                            SalesLine.Validate("No.", SalesSetup."Cuenta Vta x defecto");

                            // Set product info
                            TempExcelBuffer.Get(RowNo, 13); // Producto
                            SalesLine.Description := CopyStr(TempExcelBuffer."Cell Value as Text", 1, 50);
                            // Get VAT group from column G and check for equivalent group
                            TempExcelBuffer.Get(RowNo, 7); // VAT Group

                            // Set amount
                            TempExcelBuffer.Get(RowNo, 6); // Base Imponible
                            Evaluate(SalesLine."Unit Price", TempExcelBuffer."Cell Value as Text");
                            SalesLine.Validate(Quantity, 1);
                            // Set Description from Column N
                            TempExcelBuffer.Get(RowNo, 14); // Producto
                            SalesLine.Validate(Description, TempExcelBuffer."Cell Value as Text");
                            // Set Line Amount from Column H
                            TempExcelBuffer.Get(RowNo, 8); // Line Amount
                            Evaluate(SalesLine."Line Amount", TempExcelBuffer."Cell Value as Text");
                            //Columna G Grupo Equivalente
                            TempExcelBuffer.Get(RowNo, 7); // Grupo Equivalente
                            VatProdGroup.Reset();
                            VatProdGroup.SetRange("Grupo equivalente", TempExcelBuffer."Cell Value as Text");
                            if VatProdGroup.FindFirst() then
                                SalesLine.Validate("VAT Prod. Posting Group", VatProdGroup.Code);
                            // Set IMEI fields
                            If TempExcelBuffer.Get(RowNo, 15) then // IMEI (Column O)
                                SalesLine.IMEI := TempExcelBuffer."Cell Value as Text";

                            If TempExcelBuffer.Get(RowNo, 16) then // IMEI1 (Column P) 
                                SalesLine.IMEI2 := TempExcelBuffer."Cell Value as Text";
                            SalesLine.Insert(true);
                            LineNo += 10000;
                        end;
                        RowNo += 1;
                    until not TempExcelBuffer.Get(RowNo, 1);

                    Message('Importación de facturas completada correctamente.');
                end;
            }
        }
    }
}
