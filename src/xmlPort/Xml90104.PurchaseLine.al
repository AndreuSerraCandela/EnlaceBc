/// <summary>
/// XmlPort PurchaseLine (ID 90104).
/// </summary>
xmlport 90104 PurchaseLine
{
    Caption = 'PurchaseLine';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(PurchaseLine; "Purchase Line")
            {
                UseTemporary = true;
                fieldattribute(Document_Type; PurchaseLine."Document Type") { Occurrence = Optional; }
                fieldattribute(Buy_from_Vendor_No_; PurchaseLine."Buy-from Vendor No.") { Occurrence = Optional; }
                fieldattribute(Document_No_; PurchaseLine."Document No.") { Occurrence = Optional; }
                fieldattribute(Line_No_; PurchaseLine."Line No.") { Occurrence = Optional; }
                fieldattribute(Type; PurchaseLine."Type") { Occurrence = Optional; }
                fieldattribute(No_; PurchaseLine."No.") { Occurrence = Optional; }
                fieldattribute(Location_Code; PurchaseLine."Location Code") { Occurrence = Optional; }
                fieldattribute(Posting_Group; PurchaseLine."Posting Group") { Occurrence = Optional; }
                fieldattribute(Expected_Receipt_Date; PurchaseLine."Expected Receipt Date") { Occurrence = Optional; }
                fieldattribute(Description; PurchaseLine."Description") { Occurrence = Optional; }
                fieldattribute(Description_2; PurchaseLine."Description 2") { Occurrence = Optional; }
                fieldattribute(Unit_of_Measure; PurchaseLine."Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Quantity; PurchaseLine."Quantity") { Occurrence = Optional; }
                fieldattribute(Outstanding_Quantity; PurchaseLine."Outstanding Quantity") { Occurrence = Optional; }
                fieldattribute(Qty__to_Invoice; PurchaseLine."Qty. to Invoice") { Occurrence = Optional; }
                fieldattribute(Qty__to_Receive; PurchaseLine."Qty. to Receive") { Occurrence = Optional; }
                fieldattribute(Direct_Unit_Cost; PurchaseLine."Direct Unit Cost") { Occurrence = Optional; }
                fieldattribute(VAT__; PurchaseLine."VAT %") { Occurrence = Optional; }
                fieldattribute(Line_Discount__; PurchaseLine."Line Discount %") { Occurrence = Optional; }
                fieldattribute(Line_Discount_Amount; PurchaseLine."Line Discount Amount") { Occurrence = Optional; }
                fieldattribute(Amount; PurchaseLine."Amount") { Occurrence = Optional; }
                fieldattribute(Amount_Including_VAT; PurchaseLine."Amount Including VAT") { Occurrence = Optional; }
                fieldattribute(Allow_Invoice_Disc_; PurchaseLine."Allow Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Gross_Weight; PurchaseLine."Gross Weight") { Occurrence = Optional; }
                fieldattribute(Net_Weight; PurchaseLine."Net Weight") { Occurrence = Optional; }
                fieldattribute(Units_per_Parcel; PurchaseLine."Units per Parcel") { Occurrence = Optional; }
                fieldattribute(Unit_Volume; PurchaseLine."Unit Volume") { Occurrence = Optional; }
                fieldattribute(Appl__to_Item_Entry; PurchaseLine."Appl.-to Item Entry") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_1_Code; PurchaseLine."Shortcut Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_2_Code; PurchaseLine."Shortcut Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Job_No_; PurchaseLine."Job No.") { Occurrence = Optional; }
                fieldattribute(Indirect_Cost__; PurchaseLine."Indirect Cost %") { Occurrence = Optional; }
                fieldattribute(Recalculate_Invoice_Disc_; PurchaseLine."Recalculate Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Outstanding_Amount; PurchaseLine."Outstanding Amount") { Occurrence = Optional; }
                fieldattribute(Qty__Rcd__Not_Invoiced; PurchaseLine."Qty. Rcd. Not Invoiced") { Occurrence = Optional; }
                fieldattribute(Amt__Rcd__Not_Invoiced; PurchaseLine."Amt. Rcd. Not Invoiced") { Occurrence = Optional; }
                fieldattribute(Quantity_Received; PurchaseLine."Quantity Received") { Occurrence = Optional; }
                fieldattribute(Quantity_Invoiced; PurchaseLine."Quantity Invoiced") { Occurrence = Optional; }
                fieldattribute(Receipt_No_; PurchaseLine."Receipt No.") { Occurrence = Optional; }
                fieldattribute(Receipt_Line_No_; PurchaseLine."Receipt Line No.") { Occurrence = Optional; }
                fieldattribute(Order_No_; PurchaseLine."Order No.") { Occurrence = Optional; }
                fieldattribute(Order_Line_No_; PurchaseLine."Order Line No.") { Occurrence = Optional; }
                fieldattribute(Profit__; PurchaseLine."Profit %") { Occurrence = Optional; }
                fieldattribute(Pay_to_Vendor_No_; PurchaseLine."Pay-to Vendor No.") { Occurrence = Optional; }
                fieldattribute(Inv__Discount_Amount; PurchaseLine."Inv. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Vendor_Item_No_; PurchaseLine."Vendor Item No.") { Occurrence = Optional; }
                fieldattribute(Sales_Order_No_; PurchaseLine."Sales Order No.") { Occurrence = Optional; }
                fieldattribute(Sales_Order_Line_No_; PurchaseLine."Sales Order Line No.") { Occurrence = Optional; }
                fieldattribute(Drop_Shipment; PurchaseLine."Drop Shipment") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; PurchaseLine."Gen. Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Gen__Prod__Posting_Group; PurchaseLine."Gen. Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(VAT_Calculation_Type; PurchaseLine."VAT Calculation Type") { Occurrence = Optional; }
                fieldattribute(Transaction_Type; PurchaseLine."Transaction Type") { Occurrence = Optional; }
                fieldattribute(Transport_Method; PurchaseLine."Transport Method") { Occurrence = Optional; }
                fieldattribute(Attached_to_Line_No_; PurchaseLine."Attached to Line No.") { Occurrence = Optional; }
                fieldattribute(Entry_Point; PurchaseLine."Entry Point") { Occurrence = Optional; }
                fieldattribute(PurchaseLineArea; PurchaseLine."Area") { Occurrence = Optional; }
                fieldattribute(Transaction_Specification; PurchaseLine."Transaction Specification") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; PurchaseLine."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; PurchaseLine."Tax Liable") { Occurrence = Optional; }
                fieldattribute(Tax_Group_Code; PurchaseLine."Tax Group Code") { Occurrence = Optional; }
                fieldattribute(Use_Tax; PurchaseLine."Use Tax") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; PurchaseLine."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(VAT_Prod__Posting_Group; PurchaseLine."VAT Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; PurchaseLine."Currency Code") { Occurrence = Optional; }
                fieldattribute(Blanket_Order_No_; PurchaseLine."Blanket Order No.") { Occurrence = Optional; }
                fieldattribute(Blanket_Order_Line_No_; PurchaseLine."Blanket Order Line No.") { Occurrence = Optional; }
                fieldattribute(VAT_Base_Amount; PurchaseLine."VAT Base Amount") { Occurrence = Optional; }
                fieldattribute(Unit_Cost; PurchaseLine."Unit Cost") { Occurrence = Optional; }
                fieldattribute(System_Created_Entry; PurchaseLine."System-Created Entry") { Occurrence = Optional; }
                fieldattribute(Line_Amount; PurchaseLine."Line Amount") { Occurrence = Optional; }
                fieldattribute(VAT_Difference; PurchaseLine."VAT Difference") { Occurrence = Optional; }
                fieldattribute(Inv__Disc__Amount_to_Invoice; PurchaseLine."Inv. Disc. Amount to Invoice") { Occurrence = Optional; }
                fieldattribute(VAT_Identifier; PurchaseLine."VAT Identifier") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Ref__Type; PurchaseLine."IC Partner Ref. Type") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Reference; PurchaseLine."IC Partner Reference") { Occurrence = Optional; }
                fieldattribute(Prepayment__; PurchaseLine."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Prepmt__Line_Amount; PurchaseLine."Prepmt. Line Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amt__Inv_; PurchaseLine."Prepmt. Amt. Inv.") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amt__Incl__VAT; PurchaseLine."Prepmt. Amt. Incl. VAT") { Occurrence = Optional; }
                fieldattribute(Prepayment_Amount; PurchaseLine."Prepayment Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__VAT_Base_Amt_; PurchaseLine."Prepmt. VAT Base Amt.") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT__; PurchaseLine."Prepayment VAT %") { Occurrence = Optional; }
                fieldattribute(Prepmt__VAT_Calc__Type; PurchaseLine."Prepmt. VAT Calc. Type") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT_Identifier; PurchaseLine."Prepayment VAT Identifier") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Area_Code; PurchaseLine."Prepayment Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Liable; PurchaseLine."Prepayment Tax Liable") { Occurrence = Optional; }
                fieldattribute(Prepayment_Tax_Group_Code; PurchaseLine."Prepayment Tax Group Code") { Occurrence = Optional; }
                fieldattribute(Prepmt_Amt_to_Deduct; PurchaseLine."Prepmt Amt to Deduct") { Occurrence = Optional; }
                fieldattribute(Prepmt_Amt_Deducted; PurchaseLine."Prepmt Amt Deducted") { Occurrence = Optional; }
                fieldattribute(Prepayment_Line; PurchaseLine."Prepayment Line") { Occurrence = Optional; }
                fieldattribute(Prepmt__Amount_Inv__Incl__VAT; PurchaseLine."Prepmt. Amount Inv. Incl. VAT") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Code; PurchaseLine."IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Prepayment_VAT_Difference; PurchaseLine."Prepayment VAT Difference") { Occurrence = Optional; }
                fieldattribute(Prepmt_VAT_Diff__to_Deduct; PurchaseLine."Prepmt VAT Diff. to Deduct") { Occurrence = Optional; }
                fieldattribute(Prepmt_VAT_Diff__Deducted; PurchaseLine."Prepmt VAT Diff. Deducted") { Occurrence = Optional; }
                fieldattribute(IC_Item_Reference_No_; PurchaseLine."IC Item Reference No.") { Occurrence = Optional; }
                fieldattribute(Pmt__Discount_Amount; PurchaseLine."Pmt. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Prepmt__Pmt__Discount_Amount; PurchaseLine."Prepmt. Pmt. Discount Amount") { Occurrence = Optional; }
                fieldattribute(Dimension_Set_ID; PurchaseLine."Dimension Set ID") { Occurrence = Optional; }
                fieldattribute(Job_Task_No_; PurchaseLine."Job Task No.") { Occurrence = Optional; }
                fieldattribute(Job_Line_Type; PurchaseLine."Job Line Type") { Occurrence = Optional; }
                fieldattribute(Job_Unit_Price; PurchaseLine."Job Unit Price") { Occurrence = Optional; }
                fieldattribute(Job_Total_Price; PurchaseLine."Job Total Price") { Occurrence = Optional; }
                fieldattribute(Job_Line_Amount; PurchaseLine."Job Line Amount") { Occurrence = Optional; }
                fieldattribute(Job_Line_Discount_Amount; PurchaseLine."Job Line Discount Amount") { Occurrence = Optional; }
                fieldattribute(Job_Line_Discount__; PurchaseLine."Job Line Discount %") { Occurrence = Optional; }
                fieldattribute(Job_Currency_Factor; PurchaseLine."Job Currency Factor") { Occurrence = Optional; }
                fieldattribute(Job_Currency_Code; PurchaseLine."Job Currency Code") { Occurrence = Optional; }
                fieldattribute(Job_Planning_Line_No_; PurchaseLine."Job Planning Line No.") { Occurrence = Optional; }
                fieldattribute(Job_Remaining_Qty_; PurchaseLine."Job Remaining Qty.") { Occurrence = Optional; }
                fieldattribute(Deferral_Code; PurchaseLine."Deferral Code") { Occurrence = Optional; }
                fieldattribute(Returns_Deferral_Start_Date; PurchaseLine."Returns Deferral Start Date") { Occurrence = Optional; }
                fieldattribute(Prod__Order_No_; PurchaseLine."Prod. Order No.") { Occurrence = Optional; }
                fieldattribute(Variant_Code; PurchaseLine."Variant Code") { Occurrence = Optional; }
                fieldattribute(Bin_Code; PurchaseLine."Bin Code") { Occurrence = Optional; }
                fieldattribute(Qty__per_Unit_of_Measure; PurchaseLine."Qty. per Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Qty__Rounding_Precision; PurchaseLine."Qty. Rounding Precision") { Occurrence = Optional; }
                fieldattribute(Unit_of_Measure_Code; PurchaseLine."Unit of Measure Code") { Occurrence = Optional; }
                fieldattribute(FA_Posting_Date; PurchaseLine."FA Posting Date") { Occurrence = Optional; }
                fieldattribute(FA_Posting_Type; PurchaseLine."FA Posting Type") { Occurrence = Optional; }
                fieldattribute(Depreciation_Book_Code; PurchaseLine."Depreciation Book Code") { Occurrence = Optional; }
                fieldattribute(Salvage_Value; PurchaseLine."Salvage Value") { Occurrence = Optional; }
                fieldattribute(Depr__until_FA_Posting_Date; PurchaseLine."Depr. until FA Posting Date") { Occurrence = Optional; }
                fieldattribute(Depr__Acquisition_Cost; PurchaseLine."Depr. Acquisition Cost") { Occurrence = Optional; }
                fieldattribute(Maintenance_Code; PurchaseLine."Maintenance Code") { Occurrence = Optional; }
                fieldattribute(Insurance_No_; PurchaseLine."Insurance No.") { Occurrence = Optional; }
                fieldattribute(Budgeted_FA_No_; PurchaseLine."Budgeted FA No.") { Occurrence = Optional; }
                fieldattribute(Duplicate_in_Depreciation_Book; PurchaseLine."Duplicate in Depreciation Book") { Occurrence = Optional; }
                fieldattribute(Use_Duplication_List; PurchaseLine."Use Duplication List") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; PurchaseLine."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Item_Category_Code; PurchaseLine."Item Category Code") { Occurrence = Optional; }
                fieldattribute(Nonstock; PurchaseLine."Nonstock") { Occurrence = Optional; }
                fieldattribute(Purchasing_Code; PurchaseLine."Purchasing Code") { Occurrence = Optional; }
                fieldattribute(Special_Order; PurchaseLine."Special Order") { Occurrence = Optional; }
                fieldattribute(Special_Order_Sales_No_; PurchaseLine."Special Order Sales No.") { Occurrence = Optional; }
                fieldattribute(Special_Order_Sales_Line_No_; PurchaseLine."Special Order Sales Line No.") { Occurrence = Optional; }
                fieldattribute(Item_Reference_No_; PurchaseLine."Item Reference No.") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Unit_of_Measure; PurchaseLine."Item Reference Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Type; PurchaseLine."Item Reference Type") { Occurrence = Optional; }
                fieldattribute(Item_Reference_Type_No_; PurchaseLine."Item Reference Type No.") { Occurrence = Optional; }
                fieldattribute(Completely_Received; PurchaseLine."Completely Received") { Occurrence = Optional; }
                fieldattribute(Requested_Receipt_Date; PurchaseLine."Requested Receipt Date") { Occurrence = Optional; }
                fieldattribute(Promised_Receipt_Date; PurchaseLine."Promised Receipt Date") { Occurrence = Optional; }
                fieldattribute(Lead_Time_Calculation; PurchaseLine."Lead Time Calculation") { Occurrence = Optional; }
                fieldattribute(Inbound_Whse__Handling_Time; PurchaseLine."Inbound Whse. Handling Time") { Occurrence = Optional; }
                fieldattribute(Planned_Receipt_Date; PurchaseLine."Planned Receipt Date") { Occurrence = Optional; }
                fieldattribute(Order_Date; PurchaseLine."Order Date") { Occurrence = Optional; }
                fieldattribute(Allow_Item_Charge_Assignment; PurchaseLine."Allow Item Charge Assignment") { Occurrence = Optional; }
                fieldattribute(Return_Qty__to_Ship; PurchaseLine."Return Qty. to Ship") { Occurrence = Optional; }
                fieldattribute(Return_Qty__Shipped_Not_Invd_; PurchaseLine."Return Qty. Shipped Not Invd.") { Occurrence = Optional; }
                fieldattribute(Return_Shpd__Not_Invd_; PurchaseLine."Return Shpd. Not Invd.") { Occurrence = Optional; }
                fieldattribute(Return_Qty__Shipped; PurchaseLine."Return Qty. Shipped") { Occurrence = Optional; }
                fieldattribute(Return_Shipment_No_; PurchaseLine."Return Shipment No.") { Occurrence = Optional; }
                fieldattribute(Return_Shipment_Line_No_; PurchaseLine."Return Shipment Line No.") { Occurrence = Optional; }
                fieldattribute(Return_Reason_Code; PurchaseLine."Return Reason Code") { Occurrence = Optional; }
                fieldattribute(Subtype; PurchaseLine."Subtype") { Occurrence = Optional; }
                fieldattribute(Copied_From_Posted_Doc_; PurchaseLine."Copied From Posted Doc.") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; PurchaseLine."Price Calculation Method") { Occurrence = Optional; }
                fieldattribute(Over_Receipt_Quantity; PurchaseLine."Over-Receipt Quantity") { Occurrence = Optional; }
                fieldattribute(Over_Receipt_Code; PurchaseLine."Over-Receipt Code") { Occurrence = Optional; }
                fieldattribute(Over_Receipt_Approval_Status; PurchaseLine."Over-Receipt Approval Status") { Occurrence = Optional; }
                fieldattribute(EC__; PurchaseLine."EC %") { Occurrence = Optional; }
                fieldattribute(EC_Difference; PurchaseLine."EC Difference") { Occurrence = Optional; }
                fieldattribute(Prepayment_EC__; PurchaseLine."Prepayment EC %") { Occurrence = Optional; }
                fieldattribute(Routing_No_; PurchaseLine."Routing No.") { Occurrence = Optional; }
                fieldattribute(Operation_No_; PurchaseLine."Operation No.") { Occurrence = Optional; }
                fieldattribute(Work_Center_No_; PurchaseLine."Work Center No.") { Occurrence = Optional; }
                fieldattribute(Finished; PurchaseLine."Finished") { Occurrence = Optional; }
                fieldattribute(Prod__Order_Line_No_; PurchaseLine."Prod. Order Line No.") { Occurrence = Optional; }
                fieldattribute(Overhead_Rate; PurchaseLine."Overhead Rate") { Occurrence = Optional; }
                fieldattribute(MPS_Order; PurchaseLine."MPS Order") { Occurrence = Optional; }
                fieldattribute(Planning_Flexibility; PurchaseLine."Planning Flexibility") { Occurrence = Optional; }
                fieldattribute(Safety_Lead_Time; PurchaseLine."Safety Lead Time") { Occurrence = Optional; }
                fieldattribute(Routing_Reference_No_; PurchaseLine."Routing Reference No.") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    PedidosL: Record "Purchase Line";
                begin
                    // Hacer aqui las validaciones
                    PedidosL := PurchaseLine;
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
