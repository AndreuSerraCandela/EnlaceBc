/// <summary>
/// XmlPort SalesLine (ID 90102).
/// </summary>
xmlport 90102 SalesLine
{
    Caption = 'SalesLine';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SalesLine; "Sales Line")
            {
                UseTemporary = true;
                fieldattribute(Document_Type; Salesline."Document Type") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_No_; Salesline."Sell-to Customer No.") { Occurrence = Optional; }
                fieldattribute(Document_No_; Salesline."Document No.") { Occurrence = Optional; }
                fieldattribute(Line_No_; Salesline."Line No.") { Occurrence = Optional; }
                fieldattribute(Type; Salesline."Type") { Occurrence = Optional; }
                fieldattribute(No_; Salesline."No.") { Occurrence = Optional; }
                fieldattribute(Location_Code; Salesline."Location Code") { Occurrence = Optional; }
                fieldattribute(Posting_Group; Salesline."Posting Group") { Occurrence = Optional; }
                fieldattribute(Shipment_Date; Salesline."Shipment Date") { Occurrence = Optional; }
                fieldattribute(Description; Salesline."Description") { Occurrence = Optional; }
                fieldattribute(Description_2; Salesline."Description 2") { Occurrence = Optional; }
                fieldattribute(Unit_of_Measure; Salesline."Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Quantity; Salesline."Quantity") { Occurrence = Optional; }
                fieldattribute(Outstanding_Quantity; Salesline."Outstanding Quantity") { Occurrence = Optional; }
                fieldattribute(Qty__to_Invoice; Salesline."Qty. to Invoice") { Occurrence = Optional; }
                fieldattribute(Qty__to_Ship; Salesline."Qty. to Ship") { Occurrence = Optional; }
                fieldattribute(Unit_Price; Salesline."Unit Price") { Occurrence = Optional; }
                fieldattribute(Unit_Cost_LCY; Salesline."Unit Cost (LCY)") { Occurrence = Optional; }
                fieldattribute(VAT__; Salesline."VAT %") { Occurrence = Optional; }
                fieldattribute(Line_Discount__; Salesline."Line Discount %") { Occurrence = Optional; }
                fieldattribute(Line_Discount_Amount; Salesline."Line Discount Amount") { Occurrence = Optional; }
                fieldattribute(Amount; Salesline."Amount") { Occurrence = Optional; }
                fieldattribute(Amount_Including_VAT; Salesline."Amount Including VAT") { Occurrence = Optional; }
                fieldattribute(Allow_Invoice_Disc_; Salesline."Allow Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Gross_Weight; Salesline."Gross Weight") { Occurrence = Optional; }
                fieldattribute(Net_Weight; Salesline."Net Weight") { Occurrence = Optional; }
                fieldattribute(Units_per_Parcel; Salesline."Units per Parcel") { Occurrence = Optional; }
                fieldattribute(Unit_Volume; Salesline."Unit Volume") { Occurrence = Optional; }
                fieldattribute(Appl__to_Item_Entry; Salesline."Appl.-to Item Entry") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_1_Code; Salesline."Shortcut Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_2_Code; Salesline."Shortcut Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Customer_Price_Group; Salesline."Customer Price Group") { Occurrence = Optional; }
                fieldattribute(Job_No_; Salesline."Job No.") { Occurrence = Optional; }
                fieldattribute(Work_Type_Code; Salesline."Work Type Code") { Occurrence = Optional; }
                fieldattribute(Recalculate_Invoice_Disc_; Salesline."Recalculate Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Outstanding_Amount; Salesline."Outstanding Amount") { Occurrence = Optional; }
                fieldattribute(Qty__Shipped_Not_Invoiced; Salesline."Qty. Shipped Not Invoiced") { Occurrence = Optional; }
                fieldattribute(Shipped_Not_Invoiced; Salesline."Shipped Not Invoiced") { Occurrence = Optional; }
                fieldattribute(Quantity_Shipped; Salesline."Quantity Shipped") { Occurrence = Optional; }
                fieldattribute(Quantity_Invoiced; Salesline."Quantity Invoiced") { Occurrence = Optional; }
                fieldattribute(Shipment_No_; Salesline."Shipment No.") { Occurrence = Optional; }
                fieldattribute(Shipment_Line_No_; Salesline."Shipment Line No.") { Occurrence = Optional; }
                fieldattribute(Profit__; Salesline."Profit %") { Occurrence = Optional; }
                fieldattribute(Bill_to_Customer_No_; Salesline."Bill-to Customer No.") { Occurrence = Optional; }
                fieldattribute(Inv__Discount_Amount; Salesline."Inv. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Purchase_Order_No_; Salesline."Purchase Order No.") { Occurrence = Optional; }
                fieldattribute(Purch__Order_Line_No_; Salesline."Purch. Order Line No.") { Occurrence = Optional; }
                fieldattribute(Drop_Shipment; Salesline."Drop Shipment") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; Salesline."Gen. Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Gen__Prod__Posting_Group; Salesline."Gen. Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(VAT_Calculation_Type; Salesline."VAT Calculation Type") { Occurrence = Optional; }
                fieldattribute(Transaction_Type; Salesline."Transaction Type") { Occurrence = Optional; }
                fieldattribute(Transport_Method; Salesline."Transport Method") { Occurrence = Optional; }
                fieldattribute(Attached_to_Line_No_; Salesline."Attached to Line No.") { Occurrence = Optional; }
                fieldattribute(Exit_Point; Salesline."Exit Point") { Occurrence = Optional; }
                fieldattribute(SalesLineArea; Salesline."Area") { Occurrence = Optional; }
                fieldattribute(Transaction_Specification; Salesline."Transaction Specification") { Occurrence = Optional; }
                fieldattribute(Tax_Category; Salesline."Tax Category") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; Salesline."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; Salesline."Tax Liable") { Occurrence = Optional; }
                fieldattribute(Tax_Group_Code; Salesline."Tax Group Code") { Occurrence = Optional; }
                fieldattribute(VAT_Clause_Code; Salesline."VAT Clause Code") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; Salesline."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(VAT_Prod__Posting_Group; Salesline."VAT Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; Salesline."Currency Code") { Occurrence = Optional; }
                fieldattribute(Outstanding_Amount_LCY; Salesline."Outstanding Amount (LCY)") { Occurrence = Optional; }
                fieldattribute(Shipped_Not_Invoiced_LCY; Salesline."Shipped Not Invoiced (LCY)") { Occurrence = Optional; }
                fieldattribute(Shipped_Not_Inv__LCY_No_VAT; Salesline."Shipped Not Inv. (LCY) No VAT") { Occurrence = Optional; }
                fieldattribute(Reserve; Salesline."Reserve") { Occurrence = Optional; }
                fieldattribute(Blanket_Order_No_; Salesline."Blanket Order No.") { Occurrence = Optional; }
                fieldattribute(Blanket_Order_Line_No_; Salesline."Blanket Order Line No.") { Occurrence = Optional; }
                fieldattribute(VAT_Base_Amount; Salesline."VAT Base Amount") { Occurrence = Optional; }
                fieldattribute(Unit_Cost; Salesline."Unit Cost") { Occurrence = Optional; }
                fieldattribute(System_Created_Entry; Salesline."System-Created Entry") { Occurrence = Optional; }
                fieldattribute(Line_Amount; Salesline."Line Amount") { Occurrence = Optional; }
                fieldattribute(VAT_Difference; Salesline."VAT Difference") { Occurrence = Optional; }
                fieldattribute(Inv__Disc__Amount_to_Invoice; Salesline."Inv. Disc. Amount to Invoice") { Occurrence = Optional; }
                fieldattribute(VAT_Identifier; Salesline."VAT Identifier") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Ref__Type; Salesline."IC Partner Ref. Type") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Reference; Salesline."IC Partner Reference") { Occurrence = Optional; }
                fieldattribute(Prepayment__; Salesline."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Prepmt__Line_Amount; Salesline."Prepmt. Line Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amt__Inv_; Salesline."Prepmt. Amt. Inv.") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amt__Incl__VAT; Salesline."Prepmt. Amt. Incl. VAT") { Occurrence = Optional; }
                fieldattribute(Prepayment_Amount; Salesline."Prepayment Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__VAT_Base_Amt_; Salesline."Prepmt. VAT Base Amt.") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT__; Salesline."Prepayment VAT %") { Occurrence = Optional; }
                fieldattribute(Prepmt__VAT_Calc__Type; Salesline."Prepmt. VAT Calc. Type") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT_Identifier; Salesline."Prepayment VAT Identifier") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Area_Code; Salesline."Prepayment Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Liable; Salesline."Prepayment Tax Liable") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Group_Code; Salesline."Prepayment Tax Group Code") { Occurrence = Optional; }
                fieldattribute(Prepmt_Amt_to_Deduct; Salesline."Prepmt Amt to Deduct") { Occurrence = Optional; }
                fieldattribute(Prepmt_Amt_Deducted; Salesline."Prepmt Amt Deducted") { Occurrence = Optional; }
                fieldattribute(Prepayment_Line; Salesline."Prepayment Line") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amount_Inv__Incl__VAT; Salesline."Prepmt. Amount Inv. Incl. VAT") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amount_Inv__LCY; Salesline."Prepmt. Amount Inv. (LCY)") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Code; Salesline."IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Prepmt__VAT_Amount_Inv__LCY; Salesline."Prepmt. VAT Amount Inv. (LCY)") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT_Difference; Salesline."Prepayment VAT Difference") { Occurrence = Optional; }
                fieldattribute(Prepmt_VAT_Diff__to_Deduct; Salesline."Prepmt VAT Diff. to Deduct") { Occurrence = Optional; }
                fieldattribute(Prepmt_VAT_Diff__Deducted; Salesline."Prepmt VAT Diff. Deducted") { Occurrence = Optional; }
                fieldattribute(IC_Item_Reference_No_; Salesline."IC Item Reference No.") { Occurrence = Optional; }
                fieldattribute(Pmt__Discount_Amount; Salesline."Pmt. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__Pmt__Discount_Amount; Salesline."Prepmt. Pmt. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Line_Discount_Calculation; Salesline."Line Discount Calculation") { Occurrence = Optional; }
                fieldattribute(Dimension_Set_ID; Salesline."Dimension Set ID") { Occurrence = Optional; }
                fieldattribute(Qty__to_Assemble_to_Order; Salesline."Qty. to Assemble to Order") { Occurrence = Optional; }
                fieldattribute(Qty__to_Asm__to_Order_Base; Salesline."Qty. to Asm. to Order (Base)") { Occurrence = Optional; }
                fieldattribute(Job_Task_No_; Salesline."Job Task No.") { Occurrence = Optional; }
                fieldattribute(Job_Contract_Entry_No_; Salesline."Job Contract Entry No.") { Occurrence = Optional; }
                fieldattribute(Deferral_Code; Salesline."Deferral Code") { Occurrence = Optional; }
                fieldattribute(Returns_Deferral_Start_Date; Salesline."Returns Deferral Start Date") { Occurrence = Optional; }
                fieldattribute(Variant_Code; Salesline."Variant Code") { Occurrence = Optional; }
                fieldattribute(Bin_Code; Salesline."Bin Code") { Occurrence = Optional; }
                fieldattribute(Qty__per_Unit_of_Measure; Salesline."Qty. per Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Planned; Salesline."Planned") { Occurrence = Optional; }
                fieldattribute(Qty__Rounding_Precision; Salesline."Qty. Rounding Precision") { Occurrence = Optional; }
                fieldattribute(Qty__Rounding_Precision_Base; Salesline."Qty. Rounding Precision (Base)") { Occurrence = Optional; }
                fieldattribute(Unit_of_Measure_Code; Salesline."Unit of Measure Code") { Occurrence = Optional; }
                fieldattribute(Quantity_Base; Salesline."Quantity (Base)") { Occurrence = Optional; }
                fieldattribute(Outstanding_Qty__Base; Salesline."Outstanding Qty. (Base)") { Occurrence = Optional; }
                fieldattribute(Qty__to_Invoice_Base; Salesline."Qty. to Invoice (Base)") { Occurrence = Optional; }
                fieldattribute(Qty__to_Ship_Base; Salesline."Qty. to Ship (Base)") { Occurrence = Optional; }
                fieldattribute(Qty__Shipped_Not_Invd__Base; Salesline."Qty. Shipped Not Invd. (Base)") { Occurrence = Optional; }
                fieldattribute(Qty__Shipped_Base; Salesline."Qty. Shipped (Base)") { Occurrence = Optional; }
                fieldattribute(Qty__Invoiced_Base; Salesline."Qty. Invoiced (Base)") { Occurrence = Optional; }
                fieldattribute(Depreciation_Book_Code; Salesline."Depreciation Book Code") { Occurrence = Optional; }
                fieldattribute(Depr__until_FA_Posting_Date; Salesline."Depr. until FA Posting Date") { Occurrence = Optional; }
                fieldattribute(Duplicate_in_Depreciation_Book; Salesline."Duplicate in Depreciation Book") { Occurrence = Optional; }
                fieldattribute(Use_Duplication_List; Salesline."Use Duplication List") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; Salesline."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Out_of_Stock_Substitution; Salesline."Out-of-Stock Substitution") { Occurrence = Optional; }
                fieldattribute(Originally_Ordered_No_; Salesline."Originally Ordered No.") { Occurrence = Optional; }
                fieldattribute(Originally_Ordered_Var__Code; Salesline."Originally Ordered Var. Code") { Occurrence = Optional; }
                fieldattribute(Item_Category_Code; Salesline."Item Category Code") { Occurrence = Optional; }
                fieldattribute(Nonstock; Salesline."Nonstock") { Occurrence = Optional; }
                fieldattribute(Purchasing_Code; Salesline."Purchasing Code") { Occurrence = Optional; }
                //fieldattribute(Product_Group_Code;Salesline."Product Group Code"){}
                fieldattribute(Special_Order; Salesline."Special Order") { Occurrence = Optional; }
                fieldattribute(Special_Order_Purchase_No_; Salesline."Special Order Purchase No.") { Occurrence = Optional; }
                fieldattribute(Special_Order_Purch__Line_No_; Salesline."Special Order Purch. Line No.") { Occurrence = Optional; }
                fieldattribute(Item_Reference_No_; Salesline."Item Reference No.") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Unit_of_Measure; Salesline."Item Reference Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Type; Salesline."Item Reference Type") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Type_No_; Salesline."Item Reference Type No.") { Occurrence = Optional; }
                fieldattribute(Completely_Shipped; Salesline."Completely Shipped") { Occurrence = Optional; }
                fieldattribute(Requested_Delivery_Date; Salesline."Requested Delivery Date") { Occurrence = Optional; }
                fieldattribute(Promised_Delivery_Date; Salesline."Promised Delivery Date") { Occurrence = Optional; }
                fieldattribute(Shipping_Time; Salesline."Shipping Time") { Occurrence = Optional; }
                fieldattribute(Outbound_Whse__Handling_Time; Salesline."Outbound Whse. Handling Time") { Occurrence = Optional; }
                fieldattribute(Planned_Delivery_Date; Salesline."Planned Delivery Date") { Occurrence = Optional; }
                fieldattribute(Planned_Shipment_Date; Salesline."Planned Shipment Date") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Code; Salesline."Shipping Agent Code") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Service_Code; Salesline."Shipping Agent Service Code") { Occurrence = Optional; }
                fieldattribute(Allow_Item_Charge_Assignment; Salesline."Allow Item Charge Assignment") { Occurrence = Optional; }
                fieldattribute(Return_Qty__to_Receive; Salesline."Return Qty. to Receive") { Occurrence = Optional; }
                fieldattribute(Return_Qty__to_Receive_Base; Salesline."Return Qty. to Receive (Base)") { Occurrence = Optional; }
                fieldattribute(Return_Qty__Rcd__Not_Invd_; Salesline."Return Qty. Rcd. Not Invd.") { Occurrence = Optional; }
                fieldattribute(Ret__Qty__Rcd__Not_Invd_Base; Salesline."Ret. Qty. Rcd. Not Invd.(Base)") { Occurrence = Optional; }
                fieldattribute(Return_Rcd__Not_Invd_; Salesline."Return Rcd. Not Invd.") { Occurrence = Optional; }
                fieldattribute(Return_Rcd__Not_Invd__LCY; Salesline."Return Rcd. Not Invd. (LCY)") { Occurrence = Optional; }
                fieldattribute(Return_Qty__Received; Salesline."Return Qty. Received") { Occurrence = Optional; }
                fieldattribute(Return_Qty__Received_Base; Salesline."Return Qty. Received (Base)") { Occurrence = Optional; }
                fieldattribute(Appl__from_Item_Entry; Salesline."Appl.-from Item Entry") { Occurrence = Optional; }
                fieldattribute(BOM_Item_No_; Salesline."BOM Item No.") { Occurrence = Optional; }
                fieldattribute(Return_Receipt_No_; Salesline."Return Receipt No.") { Occurrence = Optional; }
                fieldattribute(Return_Receipt_Line_No_; Salesline."Return Receipt Line No.") { Occurrence = Optional; }
                fieldattribute(Return_Reason_Code; Salesline."Return Reason Code") { Occurrence = Optional; }
                fieldattribute(Copied_From_Posted_Doc_; Salesline."Copied From Posted Doc.") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; Salesline."Price Calculation Method") { Occurrence = Optional; }
                fieldattribute(Allow_Line_Disc_; Salesline."Allow Line Disc.") { Occurrence = Optional; }
                fieldattribute(Customer_Disc__Group; Salesline."Customer Disc. Group") { Occurrence = Optional; }
                fieldattribute(Subtype; Salesline."Subtype") { Occurrence = Optional; }
                fieldattribute(Price_description; Salesline."Price description") { Occurrence = Optional; }
                fieldattribute(EC__; Salesline."EC %") { Occurrence = Optional; }
                fieldattribute(EC_Difference; Salesline."EC Difference") { Occurrence = Optional; }
                fieldattribute(Prepayment_EC__; Salesline."Prepayment EC %") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    PedidosL: Record "Sales Line";
                begin
                    // Hacer aqui las validaciones
                    PedidosL := Salesline;
                    If PedidosL.Insert() Then;
                end;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
