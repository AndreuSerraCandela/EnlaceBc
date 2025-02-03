codeunit 90101 Eventos
{

    Permissions = tabledata "Sales Line" = RIMD,
                  tabledata "VAT Posting Setup" = RIMD,
                  tabledata "VAT Product Posting Group" = RIMD,
                  tabledata "No Taxable Entry" = RIMD;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SII XML Creator", 'OnAfterFillDetalleIVANode', '', false, false)]

    procedure AddRebuToDetalleIVANode(var XmlNodeInnerXml: Text; TempVATEntry: Record "VAT Entry" temporary; UseSign: Boolean; Sign: Integer; FillEUServiceNodes: Boolean; NonExemptTransactionType: Option S1,S2,S3,Initial; RegimeCodes: array[3] of Code[2]; AmountNodeName: Text; var IsHandled: Boolean)
    var
        SalesLine: Record "Sales Line";
    begin
        // Filtrar líneas de ventas asociadas al documento actual
        SalesLine.SetRange("Document Type", TempVATEntry."Document Type");
        SalesLine.SetRange("Document No.", TempVATEntry."Document No.");

        if SalesLine.FindSet() then begin
            repeat
                // Comprobar si alguna línea aplica REBU
                if SalesLine."Apply REBU" then begin
                    // Añadir información del REBU al XML
                    XmlNodeInnerXml += '<REBUOperation>Yes</REBUOperation>';
                    exit; // Salir del bucle si se encuentra al menos una línea con REBU
                end;
            until SalesLine.Next() = 0;
        end;
    end;
    // Validate succsess Vat Registruion No en Sales Header
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'VAT Registration No.', false, false)]
    procedure ValidateVatRegNo(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        Cust: Record Customer;
        VatRegNo: Text[20];
    begin
        If Cust.Get(Rec."Sell-to Customer No.") then begin
            if Cust."VAT Registration No." <> Rec."VAT Registration No." then
                Cust."VAT Registration No." := '';
            Cust.Modify();
        end;
        Rec."Succeeded VAT Registration No." := Rec."VAT Registration No.";
    end;
    // OnAfterValidateEvent Unit Cost (LCY) Sales Line
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Unit Cost (LCY)', false, false)]
    procedure ValidateUnitCost(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        VatPostingSetup: Record "VAT Posting Setup";
    begin
        // Obtener el grupo de IVA asociado a la línea de venta
        if VatPostingSetup.Get(Rec."VAT Bus. Posting Group", Rec."VAT Prod. Posting Group") then begin
            // Comprobar si el grupo de IVA aplica REBU
            if VatPostingSetup.Rebu then begin
                // Marcar la línea de venta para aplicar REBU
                Rec.Validate("Valor Compra", Rec."Unit Cost (LCY)" * Rec."Quantity");
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Quantity', false, false)]
    procedure ValidateQuantity(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        VatPostingSetup: Record "VAT Posting Setup";
    begin
        // Obtener el grupo de IVA asociado a la línea de venta
        if VatPostingSetup.Get(Rec."VAT Bus. Posting Group", Rec."VAT Prod. Posting Group") then begin
            // Comprobar si el grupo de IVA aplica REBU
            if VatPostingSetup.Rebu then begin
                // Marcar la línea de venta para aplicar REBU
                If Rec."Valor Compra" = 0 Then
                    Rec.Validate("Valor Compra", Rec."Unit Cost (LCY)" * Rec."Quantity")
                else
                    Rec.Validate("Valor Compra", Rec."Valor Compra");
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Vat Prod. Posting Group', false, false)]
    procedure ValidateVatProfPostingGroup(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        VatPostingSetup: Record "VAT Posting Setup";
    begin
        // Obtener el grupo de IVA asociado a la línea de venta
        if VatPostingSetup.Get(Rec."VAT Bus. Posting Group", Rec."VAT Prod. Posting Group") then begin
            // Comprobar si el grupo de IVA aplica REBU
            if VatPostingSetup.Rebu then begin
                // Marcar la línea de venta para aplicar REBU
                Rec."Apply REBU" := true;
                if Rec."Valor Compra" = 0 Then
                    Rec.Validate("Valor Compra", Rec."Unit Cost (LCY)" * Rec."Quantity")
                else
                    Rec.Validate("Valor Compra", Rec."Valor Compra");

            end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnUpdateVATAmountsOnAfterCalculateNormalVAT', '', false, false)]
    procedure CalculateVAT(var SalesLine: Record "Sales Line"; var Currency: Record Currency)
    var
        TotalSales: Decimal;
        TotalPurchases: Decimal;
        TotalVat: Decimal;
        REBUVAT: Decimal;
        SalesHeader: Record "Sales Header";
        MargenConIVA: Decimal;
    begin
        TotalVAT := 0;
        REBUVAT := 0;
        If not SalesHeader.Get(SalesLine."Document Type", SalesLine."Document No.") then SalesHeader.Init();
        // Recorrer las líneas de venta
        if (SalesLine."Apply REBU") and (not SalesHeader."Prices Including VAT") then begin
            // Calcular el margen para REBU
            TotalSales := SalesLine."Line Amount";
            TotalPurchases := SalesLine."Valor Compra"; // Campo personalizado para almacenar el precio de compra
            SalesLine."VAT Base Amount" := (TotalSales - TotalPurchases) / (1 + SalesLine."VAT %" / 100);
            SalesLine."Amount Including VAT" := SalesLine."Line Amount" + (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100);
            If SalesLine."VAT %" = 0 Then
                SalesLine."VAT base Amount" := 0;
        end;
        if (SalesLine."Apply REBU") and (SalesHeader."Prices Including VAT") then begin
            // Calcular el margen para REBU
            SalesLine."Amount Including VAT" := SalesLine."Line Amount"; // Ya que los precios incluyen IVA
            TotalSales := SalesLine."Amount Including VAT"; // Precio de venta IVA incluido
            TotalPurchases := SalesLine."Valor Compra"; // Precio de compra

            // Calcular Margen con IVA
            MargenConIVA := TotalSales - TotalPurchases;

            // Calcular Base Imponible
            SalesLine."VAT Base Amount" := Round(MargenConIVA / (1 + (SalesLine."VAT %" / 100)), Currency."Amount Rounding Precision");

            // Mantener Line Amount igual a Amount Including VAT
            SalesLine."Line Amount" := SalesLine."Amount Including VAT"; // Ya que los precios incluyen IVA
            SalesLine.Amount := Round(SalesLine."Amount Including VAT" - (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
            If SalesLine."VAT %" = 0 Then
                SalesLine."VAT base Amount" := 0;
        end;


    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeCalcVATBaseAmount', '', false, false)]
    local procedure OnBeforeCalcVATBaseAmount(SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var TempVATAmountLine: Record "VAT Amount Line" temporary; var TempVATAmountLineRemainder: Record "VAT Amount Line" temporary; Currency: Record Currency; var IsHandled: Boolean)
    var
        TotalSales: Decimal;
        TotalPurchases: Decimal;
        TotalVat: Decimal;
        REBUVAT: Decimal;
        EntryNo: Integer;
        MargenConIVA: Decimal;
    begin
        TotalVAT := 0;
        REBUVAT := 0;
        // Recorrer las líneas de venta
        if (SalesLine."Apply REBU") and (SalesHeader."Prices Including VAT" = false) then begin
            // Calcular el margen para REBU
            if SalesHeader."Currency Code" <> '' then Currency.Get(SalesHeader."Currency Code");
            TotalSales := SalesLine."Line Amount";
            TotalPurchases := SalesLine."Valor Compra"; // Campo personalizado para almacenar el precio de compra
            SalesLine."VAT Base Amount" := Round((TotalSales - TotalPurchases) / (1 + SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
            SalesLine."Amount Including VAT" := Round(SalesLine."Line Amount" + (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
            IsHandled := true;
            If SalesLine."VAT %" = 0 Then
                SalesLine."VAT base Amount" := 0;

        end;
        if (SalesLine."Apply REBU") and (SalesHeader."Prices Including VAT" = true) then begin
            SalesLine."Amount Including VAT" := SalesLine."Line Amount"; // Ya que los precios incluyen IVA
            TotalSales := SalesLine."Amount Including VAT"; // Precio de venta IVA incluido
            TotalPurchases := SalesLine."Valor Compra"; // Precio de compra

            // Calcular Margen con IVA
            MargenConIVA := TotalSales - TotalPurchases;

            // Calcular Base Imponible
            SalesLine."VAT Base Amount" := Round(MargenConIVA / (1 + (SalesLine."VAT %" / 100)), Currency."Amount Rounding Precision");
            // Mantener Line Amount igual a Amount Including VAT
            SalesLine."Line Amount" := SalesLine."Amount Including VAT"; // Ya que los precios incluyen IVA
            SalesLine.Amount := Round(SalesLine."Amount Including VAT" - (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");


        end;
    end;
    //Document Totals
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Totals", 'OnBeforeSalesDeltaUpdateTotals', '', false, false)]
    local procedure OnBeforeSalesDeltaUpdateTotals(var SalesLine: Record "Sales Line"; var xSalesLine: Record "Sales Line"; var TotalSalesLine: Record "Sales Line"; var VATAmount: Decimal; var InvoiceDiscountAmount: Decimal; var InvoiceDiscountPct: Decimal; var IsHandled: Boolean)
    var
        TotalSales: Decimal;
        TotalPurchases: Decimal;
        TotalVat: Decimal;
        REBUVAT: Decimal;
        currency: Record Currency;
        SaleslsHeader: Record "Sales Header";
        MargenConIVA: Decimal;
    begin
        TotalVAT := 0;
        REBUVAT := 0;
        If Not SaleslsHeader.Get(SalesLine."Document Type", SalesLine."Document No.") Then SaleslsHeader.Init();
        // Recorrer las líneas de venta
        if (SalesLine."Apply REBU") and (SaleslsHeader."Prices Including VAT" = false) then begin
            // Calcular el margen para REBU
            if SaleslsHeader."Currency Code" <> '' then currency.Get(SaleslsHeader."Currency Code");
            TotalSales := SalesLine."Line Amount";
            TotalPurchases := SalesLine."Valor Compra"; // Campo personalizado para almacenar el precio de compra
            SalesLine."VAT Base Amount" := Round((TotalSales - TotalPurchases) / (1 + SalesLine."VAT %" / 100), currency."Amount Rounding Precision");
            SalesLine."Amount Including VAT" := Round(SalesLine."Line Amount" + (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), currency."Amount Rounding Precision");
            IsHandled := true;
            If SalesLine."VAT %" = 0 Then
                SalesLine."VAT base Amount" := 0;

        end;
        if (SalesLine."Apply REBU") and (SaleslsHeader."Prices Including VAT" = true) then begin
            SalesLine."Amount Including VAT" := SalesLine."Line Amount"; // Ya que los precios incluyen IVA
            TotalSales := SalesLine."Amount Including VAT"; // Precio de venta IVA incluido
            TotalPurchases := SalesLine."Valor Compra"; // Precio de compra

            // Calcular Margen con IVA
            MargenConIVA := TotalSales - TotalPurchases;

            // Calcular Base Imponible
            SalesLine."VAT Base Amount" := Round(MargenConIVA / (1 + (SalesLine."VAT %" / 100)), currency."Amount Rounding Precision");
            // Mantener Line Amount igual a Amount Including VAT
            SalesLine."Line Amount" := SalesLine."Amount Including VAT"; // Ya que los precios incluyen IVA
            SalesLine.Amount := Round(SalesLine."Amount Including VAT" - (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
        end;
    end;
    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostGLAndCustomer', '', false, false)]
    // local procedure OnAfterPostGLAndCustomer(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; TotalSalesLine: Record "Sales Line"; TotalSalesLineLCY: Record "Sales Line"; CommitIsSuppressed: Boolean;
    //     WhseShptHeader: Record "Warehouse Shipment Header"; WhseShip: Boolean; var TempWhseShptHeader: Record "Warehouse Shipment Header"; var SalesInvHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    //     var CustLedgEntry: Record "Cust. Ledger Entry"; var SrcCode: Code[10]; GenJnlLineDocNo: Code[20]; GenJnlLineExtDocNo: Code[35]; var GenJnlLineDocType: Enum "Gen. Journal Document Type"; PreviewMode: Boolean; DropShipOrder: Boolean)
    // var
    //     EntryNo: Integer;
    //     NonTaxableSales: Record "No Taxable Entry";
    //     SalesLine: Record "Sales Line";
    //     TotalAmount: Decimal;
    //     TotalAmountInclVat: Decimal;
    //     TotalVat: Decimal;
    //     TotalSales: Decimal;
    //     TotalPurchases: Decimal;
    //     Currency: Record Currency;
    // begin
    //     SalesLine.SetRange("Document Type", SalesHeader."Document Type");
    //     SalesLine.SetRange("Document No.", SalesHeader."No.");
    //     SalesLine.SetRange("Apply REBU", true);
    //     if not SalesLine.FindSet() then exit;
    //     repeat
    //         if SalesHeader."Currency Code" <> '' then Currency.Get(SalesHeader."Currency Code");
    //         TotalSales := SalesLine."Line Amount";
    //         TotalPurchases := SalesLine."Valor Compra"; // Campo personalizado para almacenar el precio de compra
    //         SalesLine."VAT Base Amount" := Round((TotalSales - TotalPurchases) / (1 + SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
    //         SalesLine."Amount Including VAT" := Round(SalesLine."Line Amount" + (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100), Currency."Amount Rounding Precision");
    //         TotalAmount += SalesLine."VAT Base Amount";
    //         TotalAmountInclVat += SalesLine."Amount Including VAT";
    //     until SalesLine.Next() = 0;
    //     if NonTaxableSales.FindLast() then
    //         EntryNo := NonTaxableSales."Entry No." + 1
    //     else
    //         EntryNo := 1;
    //     NonTaxableSales.Init();
    //     NonTaxableSales."Entry No." := CustLedgEntry."Entry No.";
    //     NonTaxableSales."Document No." := CustLedgEntry."Document No.";
    //     NonTaxableSales."Document Type" := CustLedgEntry."Document Type";
    //     NonTaxableSales."Document Date" := SalesHeader."Document Date";
    //     NonTaxableSales."Posting Date" := SalesHeader."Posting Date";
    //     NonTaxableSales.Type := NonTaxableSales.Type::Sale;
    //     NonTaxableSales."Source No." := SalesHeader."Bill-to Customer No.";
    //     // Base(LCY) Añado la dierencia a sumar a la base para que al sumarle el iva me de el Amount Incl. Vat
    //     NonTaxableSales."Base (LCY)" := TotalAmountInclVat - TotalAmount;
    //     If not NonTaxableSales.Insert() then begin
    //         NonTaxableSales."Entry No." := EntryNo;
    //         NonTaxableSales.Insert();
    //     end;
    // end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SII XML Creator", 'OnBeforeCalculateTotalVatAndBaseAmounts', '', false, false)]
    local procedure OnBeforeCalculateTotalVatAndBaseAmounts(LedgerEntryRecRef: RecordRef; var TotalBaseAmount: Decimal; var TotalNonExemptVATBaseAmount: Decimal; var TotalVATAmount: Decimal; var IsHandled: Boolean)
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        VATEntry: Record "VAT Entry";
        NoTaxableEntry: Record "No Taxable Entry";
        SIIManagement: Codeunit "SII Management";
        Rebu: Boolean;
        VatPostingSetup: Record "VAT Posting Setup";

    begin
        Rebu := false;
        if SIIManagement.FindVatEntriesFromLedger(LedgerEntryRecRef, VATEntry) then
            repeat
                if VatPostingSetup.Get(VATEntry."VAT Bus. Posting Group", VATEntry."VAT Prod. Posting Group") then
                    If Rebu = false Then
                        Rebu := VatPostingSetup.Rebu;
                TotalBaseAmount += VATEntry.Base + VATEntry."Unrealized Base";
                if VATEntry."VAT %" <> 0 then
                    TotalNonExemptVATBaseAmount += VATEntry.Base + VATEntry."Unrealized Base";

                if VATEntry."VAT Calculation Type" <> VATEntry."VAT Calculation Type"::"Reverse Charge VAT" then
                    TotalVATAmount += VATEntry.Amount + VATEntry."Unrealized Amount";
            until VATEntry.Next() = 0;
        if Rebu = false Then exit;
        IsHandled := true;
        SIIManagement.FindNoTaxableEntriesFromLedger(LedgerEntryRecRef, NoTaxableEntry);
        NoTaxableEntry.CalcSums(NoTaxableEntry."Base (LCY)");
        TotalBaseAmount += NoTaxableEntry."Base (LCY)";
        LedgerEntryRecRef.SetTable(CustLedgerEntry);
        CustLedgerEntry.CalcFields(Amount);
        TotalBaseAmount := -CustLedgerEntry.Amount + TotalVATAmount;
    end;



    [EventSubscriber(ObjectType::Table, Database::"Vat Posting Setup", 'OnAfterValidateEvent', 'VAT Prod. Posting Group', false, false)]
    procedure ValidateVatProdPostingGroup(var Rec: Record "Vat Posting Setup"; var xRec: Record "Vat Posting Setup"; CurrFieldNo: Integer)
    var
        VatProdGroup: Record "VAT Product Posting Group";
    begin
        If VatProdGroup.Get(Rec."VAT Prod. Posting Group") Then Rec.Rebu := VatProdGroup.Rebu;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Vat Amount Line", 'OnInsertLineOnBeforeModify', '', false, false)]
    local procedure OnInsertLineOnBeforeModify(var VATAmountLine: Record "VAT Amount Line"; FromVATAmountLine: Record "VAT Amount Line")
    begin
        VATAmountLine."Apply REBU" := FromVATAmountLine."Apply REBU";
        VATAmountLine."Valor Compra" := FromVATAmountLine."Valor Compra";
        if VATAmountLine."Apply REBU" then begin
            VATAmountLine."VAT Base" := (VATAmountLine."Line Amount" - VATAmountLine."Valor Compra") / (1 + VATAmountLine."VAT %" / 100);
            VATAmountLine."Amount Including VAT" := VATAmountLine."Line Amount" + (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);
            VATAmountLine."VAT Amount" := (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);

        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Vat Amount Line", 'OnInsertLineOnBeforeInsert', '', false, false)]
    local procedure OnInsertLineOnBeforeInsert(var VATAmountLine: Record "VAT Amount Line"; var FromVATAmountLine: Record "VAT Amount Line")
    begin
        VATAmountLine."Apply REBU" := FromVATAmountLine."Apply REBU";
        VATAmountLine."Valor Compra" := FromVATAmountLine."Valor Compra";
        if VATAmountLine."Apply REBU" then begin
            VATAmountLine."VAT Base" := (VATAmountLine."Line Amount" - VATAmountLine."Valor Compra") / (1 + VATAmountLine."VAT %" / 100);
            VATAmountLine."Amount Including VAT" := VATAmountLine."Line Amount" + (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);
            VATAmountLine."VAT Amount" := (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);

        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"VAT Amount Line", 'OnUpdateLinesOnAfterCalcAmountIncludingVATNormalVAT', '', false, false)]
    local procedure OnUpdateLinesOnAfterCalcAmountIncludingVATNormalVAT(var VATAmountLine: Record "VAT Amount Line"; PrevVATAmountLine: Record "VAT Amount Line"; var Currency: Record Currency; VATBaseDiscountPerc: Decimal; PricesIncludingVAT: Boolean)
    var
    begin
        if VATAmountLine."Apply REBU" then begin
            VATAmountLine."VAT Base" := (VATAmountLine."Line Amount" - VATAmountLine."Valor Compra") / (1 + VATAmountLine."VAT %" / 100);
            VATAmountLine."Amount Including VAT" := VATAmountLine."Line Amount" + (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);
            VATAmountLine."VAT Amount" := (VATAmountLine."VAT Base" * VATAmountLine."VAT %" / 100);

        end;

    end;

    // [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnCalcVATAmountLinesOnAfterInsertNewVATAmountLine', '', false, false)]
    // local procedure OnCalcVATAmountLinesOnAfterInsertNewVATAmountLine(var SalesLine: Record "Sales Line"; var VATAmountLine: Record "VAT Amount Line")
    // begin
    //     VATAmountLine."Apply REBU" := SalesLine."Apply REBU";
    //     VATAmountLine."Valor Compra" := SalesLine."Valor Compra";

    // end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnSumVATAmountLineOnBeforeModify', '', false, false)]
    local procedure OnSumVATAmountLineOnBeforeModify(var SalesLine: Record "Sales Line"; var VATAmountLine: Record "VAT Amount Line")
    begin
        VATAmountLine."Apply REBU" := SalesLine."Apply REBU";
        If SalesLine."Apply REBU" then
            VATAmountLine."Valor Compra" += SalesLine."Valor Compra";

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeValidatePostingAndDocumentDate', '', false, false)]
    local procedure OnBeforeValidatePostingAndDocumentDate(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean)
    var
        Cust: Record Customer;
    begin
        If Cust.Get(SalesHeader."Sell-to Customer No.") then
            if Cust."VAT Registration No." <> SalesHeader."VAT Registration No." then begin
                Cust."VAT Registration No." := '';
                Cust.Modify();
            end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostCustomerEntry', '', false, false)]
    local procedure OnBeforePostCustomerEntry(var GenJnlLine: Record "Gen. Journal Line"; var SalesHeader: Record "Sales Header"; var TotalSalesLine: Record "Sales Line"; var TotalSalesLineLCY: Record "Sales Line"; CommitIsSuppressed: Boolean; PreviewMode: Boolean; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line")
    var
        Cust: Record Customer;
        VatRegNo: Text[20];
    begin
        If Cust.Get(SalesHeader."Sell-to Customer No.") then
            VatRegNo := Cust."VAT Registration No.";
        if SalesHeader."VAT Registration No." = VatRegNo then
            SalesHeader."VAT Registration No." := SalesHeader."Succeeded VAT Registration No.";
        If SalesHeader."VAT Registration No." <> '' then begin
            GenJnlLine."VAT Registration No." := SalesHeader."VAT Registration No.";
            GenJnlLine."Succeeded VAT Registration No." := SalesHeader."VAT Registration No.";
        end else begin
            if GenJnlLine."Succeeded VAT Registration No." <> '' then
                GenJnlLine."VAT Registration No." := GenJnlLine."Succeeded VAT Registration No.";
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Post Invoice Events", 'OnPostLedgerEntryOnBeforeGenJnlPostLine', '', false, false)]
    local procedure OnPostLedgerEntryOnBeforeGenJnlPostLine(var GenJnlLine: Record "Gen. Journal Line"; var SalesHeader: Record "Sales Header"; var TotalSalesLine: Record "Sales Line"; var TotalSalesLineLCY: Record "Sales Line"; PreviewMode: Boolean; SuppressCommit: Boolean; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line")
    begin
        If SalesHeader."VAT Registration No." <> '' then begin
            GenJnlLine."VAT Registration No." := SalesHeader."VAT Registration No.";
            GenJnlLine."Succeeded VAT Registration No." := SalesHeader."VAT Registration No.";
        end;
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SII XML Creator", 'OnFillThirdPartyIdOnBeforeAssignValues', '', false, false)]
    local procedure OnFillThirdPartyIdOnBeforeAssignValues(SIIDocUploadState: Record "SII Doc. Upload State"; var CountryCode: Code[20]; var Name: Text; var VatNo: Code[20]; IsIntraCommunity: Boolean)
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    begin
        case SIIDocUploadState."Document Type" of
            SIIDocUploadState."Document Type"::Invoice:
                begin
                    if not SalesInvoiceHeader.Get(SIIDocUploadState."Document No.") then
                        exit;
                    if SalesInvoiceHeader."VAT Registration No." <> '' then
                        VatNo := SalesInvoiceHeader."VAT Registration No.";
                    if SalesInvoiceHeader."Sell-to Customer Name" <> '' then
                        Name := SalesInvoiceHeader."Sell-to Customer Name";
                    if SalesInvoiceHeader."Sell-to Country/Region Code" <> '' then
                        CountryCode := SalesInvoiceHeader."Sell-to Country/Region Code";
                end;

            SIIDocUploadState."Document Type"::"Credit Memo":
                begin
                    if not SalesCrMemoHeader.Get(SIIDocUploadState."Document No.") then
                        exit;
                    if SalesCrMemoHeader."VAT Registration No." <> '' then
                        VatNo := SalesCrMemoHeader."VAT Registration No.";
                    if SalesCrMemoHeader."Sell-to Customer Name" <> '' then
                        Name := SalesCrMemoHeader."Sell-to Customer Name";
                    if SalesCrMemoHeader."Sell-to Country/Region Code" <> '' then
                        CountryCode := SalesCrMemoHeader."Sell-to Country/Region Code";
                end;

        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SII XML Creator", 'OnAfterGetCustomerByGLSetup', '', false, false)]
    local procedure OnAfterGetCustomerByGLSetup(var Customer: Record Customer; CustLedgerEntry: Record "Cust. Ledger Entry")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    begin
        case CustLedgerEntry."Document Type" of
            CustLedgerEntry."Document Type"::Invoice:
                begin
                    if not SalesInvoiceHeader.Get(CustLedgerEntry."Document No.") then
                        exit;
                    UpdateCustomerFromHeader(Customer,
                        SalesInvoiceHeader."VAT Registration No.",
                        SalesInvoiceHeader."sell-to Customer Name",
                        SalesInvoiceHeader."Sell-to Country/Region Code",
                        SalesInvoiceHeader."sell-to County",
                        SalesInvoiceHeader."sell-to Post Code",
                        SalesInvoiceHeader."sell-to City",
                        SalesInvoiceHeader."sell-to Address",
                        SalesInvoiceHeader."sell-to Address 2");
                end;
            CustLedgerEntry."Document Type"::"Credit Memo":
                begin
                    if not SalesCrMemoHeader.Get(CustLedgerEntry."Document No.") then
                        exit;
                    UpdateCustomerFromHeader(Customer,
                        SalesCrMemoHeader."VAT Registration No.",
                        SalesCrMemoHeader."sell-to Customer Name",
                        SalesCrMemoHeader."sell-to Country/Region Code",
                        SalesCrMemoHeader."sell-to County",
                        SalesCrMemoHeader."sell-to Post Code",
                        SalesCrMemoHeader."sell-to City",
                        SalesCrMemoHeader."sell-to Address",
                        SalesCrMemoHeader."sell-to Address 2");
                end;
        end;
    end;

    local procedure UpdateCustomerFromHeader(var Customer: Record Customer;
        VATRegNo: Text[20];
        Name: Text[100];
        CountryCode: Code[10];
        County: Text[30];
        PostCode: Code[20];
        City: Text[30];
        Address: Text[100];
        Address2: Text[50])
    begin
        if VATRegNo <> '' then
            Customer."VAT Registration No." := VATRegNo;
        if Name <> '' then
            Customer.Name := Name;
        if CountryCode <> '' then
            Customer."Country/Region Code" := CountryCode;
        if County <> '' then
            Customer.County := County;
        if PostCode <> '' then
            Customer."Post Code" := PostCode;
        if City <> '' then
            Customer.City := City;
        if Address <> '' then
            Customer.Address := Address;
        if Address2 <> '' then
            Customer."Address 2" := Address2;
    end;

}


