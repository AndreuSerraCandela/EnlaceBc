codeunit 90101 Eventos
{


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
                Rec.Validate("Valor Compra", Rec."Unit Cost (LCY)" * Rec."Quantity");
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
                Rec.Validate("Valor Compra", Rec."Unit Cost (LCY)" * Rec."Quantity");
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
    begin
        TotalVAT := 0;
        REBUVAT := 0;
        // Recorrer las líneas de venta
        if SalesLine."Apply REBU" then begin
            // Calcular el margen para REBU
            TotalSales := SalesLine."Line Amount";
            TotalPurchases := SalesLine."Valor Compra"; // Campo personalizado para almacenar el precio de compra
            SalesLine."VAT Base Amount" := TotalSales - TotalPurchases;
            SalesLine."Amount Including VAT" := SalesLine."Line Amount" + (SalesLine."VAT Base Amount" * SalesLine."VAT %" / 100);
        end;


    end;

    [EventSubscriber(ObjectType::Table, Database::"Vat Posting Setup", 'OnAfterValidateEvent', 'VAT Prod. Posting Group', false, false)]
    procedure ValidateVatProdPostingGroup(var Rec: Record "Vat Posting Setup"; var xRec: Record "Vat Posting Setup"; CurrFieldNo: Integer)
    var
        VatProdGroup: Record "VAT Product Posting Group";
    begin
        If VatProdGroup.Get(Rec."VAT Prod. Posting Group") Then Rec.Rebu := VatProdGroup.Rebu;
    end;


    [EventSubscriber(ObjectType::Table, Database::"VAT Amount Line", 'OnUpdateLinesOnAfterCalcAmountIncludingVATNormalVAT', '', false, false)]
    local procedure OnUpdateLinesOnAfterCalcAmountIncludingVATNormalVAT(var VATAmountLine: Record "VAT Amount Line"; PrevVATAmountLine: Record "VAT Amount Line"; var Currency: Record Currency; VATBaseDiscountPerc: Decimal; PricesIncludingVAT: Boolean)
    var
    begin
        if VATAmountLine."Apply REBU" then begin
            VATAmountLine."VAT Base" := VATAmountLine."Line Amount" - VATAmountLine."Valor Compra";
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
}


