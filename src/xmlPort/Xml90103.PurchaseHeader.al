/// <summary>
/// XmlPort PurchaseHeader (ID 90103).
/// </summary>
xmlport 90103 PurchaseHeader
{
    Caption = 'PurchaseHeader';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(PurchaseHeader; "Purchase Header")
            {
                UseTemporary = true;
                fieldattribute(Document_Type; PurchaseHeader."Document Type") { Occurrence = Optional; }
                fieldattribute(Buy_from_Vendor_No_; PurchaseHeader."Buy-from Vendor No.") { Occurrence = Optional; }
                fieldattribute(No_; PurchaseHeader."No.") { Occurrence = Optional; }
                fieldattribute(Pay_to_Vendor_No_; PurchaseHeader."Pay-to Vendor No.") { Occurrence = Optional; }
                fieldattribute(Pay_to_Name; PurchaseHeader."Pay-to Name") { Occurrence = Optional; }
                fieldattribute(Pay_to_Name_2; PurchaseHeader."Pay-to Name 2") { Occurrence = Optional; }
                fieldattribute(Pay_to_Address; PurchaseHeader."Pay-to Address") { Occurrence = Optional; }
                fieldattribute(Pay_to_Address_2; PurchaseHeader."Pay-to Address 2") { Occurrence = Optional; }
                fieldattribute(Pay_to_City; PurchaseHeader."Pay-to City") { Occurrence = Optional; }
                fieldattribute(Pay_to_Contact; PurchaseHeader."Pay-to Contact") { Occurrence = Optional; }
                fieldattribute(Your_Reference; PurchaseHeader."Your Reference") { Occurrence = Optional; }
                fieldattribute(Ship_to_Code; PurchaseHeader."Ship-to Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_Name; PurchaseHeader."Ship-to Name") { Occurrence = Optional; }
                fieldattribute(Ship_to_Name_2; PurchaseHeader."Ship-to Name 2") { Occurrence = Optional; }
                fieldattribute(Ship_to_Address; PurchaseHeader."Ship-to Address") { Occurrence = Optional; }
                fieldattribute(Ship_to_Address_2; PurchaseHeader."Ship-to Address 2") { Occurrence = Optional; }
                fieldattribute(Ship_to_City; PurchaseHeader."Ship-to City") { Occurrence = Optional; }
                fieldattribute(Ship_to_Contact; PurchaseHeader."Ship-to Contact") { Occurrence = Optional; }
                fieldattribute(Order_Date; PurchaseHeader."Order Date") { Occurrence = Optional; }
                fieldattribute(Posting_Date; PurchaseHeader."Posting Date") { Occurrence = Optional; }
                fieldattribute(Expected_Receipt_Date; PurchaseHeader."Expected Receipt Date") { Occurrence = Optional; }
                fieldattribute(Posting_Description; PurchaseHeader."Posting Description") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Code; PurchaseHeader."Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Due_Date; PurchaseHeader."Due Date") { Occurrence = Optional; }
                fieldattribute(Payment_Discount__; PurchaseHeader."Payment Discount %") { Occurrence = Optional; }
                fieldattribute(Pmt__Discount_Date; PurchaseHeader."Pmt. Discount Date") { Occurrence = Optional; }
                fieldattribute(Shipment_Method_Code; PurchaseHeader."Shipment Method Code") { Occurrence = Optional; }
                fieldattribute(Location_Code; PurchaseHeader."Location Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_1_Code; PurchaseHeader."Shortcut Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_2_Code; PurchaseHeader."Shortcut Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Vendor_Posting_Group; PurchaseHeader."Vendor Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; PurchaseHeader."Currency Code") { Occurrence = Optional; }
                fieldattribute(Currency_Factor; PurchaseHeader."Currency Factor") { Occurrence = Optional; }
                fieldattribute(Prices_Including_VAT; PurchaseHeader."Prices Including VAT") { Occurrence = Optional; }
                fieldattribute(Invoice_Disc__Code; PurchaseHeader."Invoice Disc. Code") { Occurrence = Optional; }
                fieldattribute(Language_Code; PurchaseHeader."Language Code") { Occurrence = Optional; }
                fieldattribute(Purchaser_Code; PurchaseHeader."Purchaser Code") { Occurrence = Optional; }
                fieldattribute(Order_Class; PurchaseHeader."Order Class") { Occurrence = Optional; }
                fieldattribute(Comment; PurchaseHeader."Comment") { Occurrence = Optional; }
                fieldattribute(No__Printed; PurchaseHeader."No. Printed") { Occurrence = Optional; }
                fieldattribute(On_Hold; PurchaseHeader."On Hold") { Occurrence = Optional; }
                fieldattribute(Applies_to_Doc__Type; PurchaseHeader."Applies-to Doc. Type") { Occurrence = Optional; }
                fieldattribute(Applies_to_Doc__No_; PurchaseHeader."Applies-to Doc. No.") { Occurrence = Optional; }
                fieldattribute(Bal__Account_No_; PurchaseHeader."Bal. Account No.") { Occurrence = Optional; }
                fieldattribute(Recalculate_Invoice_Disc_; PurchaseHeader."Recalculate Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Receive; PurchaseHeader."Receive") { Occurrence = Optional; }
                fieldattribute(Invoice; PurchaseHeader."Invoice") { Occurrence = Optional; }
                fieldattribute(Print_Posted_Documents; PurchaseHeader."Print Posted Documents") { Occurrence = Optional; }
                fieldattribute(Amount; PurchaseHeader."Amount") { Occurrence = Optional; }
                fieldattribute(Amount_Including_VAT; PurchaseHeader."Amount Including VAT") { Occurrence = Optional; }
                fieldattribute(Receiving_No_; PurchaseHeader."Receiving No.") { Occurrence = Optional; }
                fieldattribute(Posting_No_; PurchaseHeader."Posting No.") { Occurrence = Optional; }
                fieldattribute(Last_Receiving_No_; PurchaseHeader."Last Receiving No.") { Occurrence = Optional; }
                fieldattribute(Last_Posting_No_; PurchaseHeader."Last Posting No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Order_No_; PurchaseHeader."Vendor Order No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Shipment_No_; PurchaseHeader."Vendor Shipment No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Invoice_No_; PurchaseHeader."Vendor Invoice No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Cr__Memo_No_; PurchaseHeader."Vendor Cr. Memo No.") { Occurrence = Optional; }
                fieldattribute(VAT_Registration_No_; PurchaseHeader."VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_No_; PurchaseHeader."Sell-to Customer No.") { Occurrence = Optional; }
                fieldattribute(Reason_Code; PurchaseHeader."Reason Code") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; PurchaseHeader."Gen. Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Transaction_Type; PurchaseHeader."Transaction Type") { Occurrence = Optional; }
                fieldattribute(Transport_Method; PurchaseHeader."Transport Method") { Occurrence = Optional; }
                fieldattribute(VAT_Country_Region_Code; PurchaseHeader."VAT Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Buy_from_Vendor_Name; PurchaseHeader."Buy-from Vendor Name") { Occurrence = Optional; }
                fieldattribute(Buy_from_Vendor_Name_2; PurchaseHeader."Buy-from Vendor Name 2") { Occurrence = Optional; }
                fieldattribute(Buy_from_Address; PurchaseHeader."Buy-from Address") { Occurrence = Optional; }
                fieldattribute(Buy_from_Address_2; PurchaseHeader."Buy-from Address 2") { Occurrence = Optional; }
                fieldattribute(Buy_from_City; PurchaseHeader."Buy-from City") { Occurrence = Optional; }
                fieldattribute(Buy_from_Contact; PurchaseHeader."Buy-from Contact") { Occurrence = Optional; }
                fieldattribute(Pay_to_Post_Code; PurchaseHeader."Pay-to Post Code") { Occurrence = Optional; }
                fieldattribute(Pay_to_County; PurchaseHeader."Pay-to County") { Occurrence = Optional; }
                fieldattribute(Pay_to_Country_Region_Code; PurchaseHeader."Pay-to Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Buy_from_Post_Code; PurchaseHeader."Buy-from Post Code") { Occurrence = Optional; }
                fieldattribute(Buy_from_County; PurchaseHeader."Buy-from County") { Occurrence = Optional; }
                fieldattribute(Buy_from_Country_Region_Code; PurchaseHeader."Buy-from Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_Post_Code; PurchaseHeader."Ship-to Post Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_County; PurchaseHeader."Ship-to County") { Occurrence = Optional; }
                fieldattribute(Ship_to_Country_Region_Code; PurchaseHeader."Ship-to Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Bal__Account_Type; PurchaseHeader."Bal. Account Type") { Occurrence = Optional; }
                fieldattribute(Order_Address_Code; PurchaseHeader."Order Address Code") { Occurrence = Optional; }
                fieldattribute(Entry_Point; PurchaseHeader."Entry Point") { Occurrence = Optional; }
                fieldattribute(Correction; PurchaseHeader."Correction") { Occurrence = Optional; }
                fieldattribute(Document_Date; PurchaseHeader."Document Date") { Occurrence = Optional; }
                fieldattribute(PurchaseHeaderArea; PurchaseHeader."Area") { Occurrence = Optional; }
                fieldattribute(Transaction_Specification; PurchaseHeader."Transaction Specification") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Code; PurchaseHeader."Payment Method Code") { Occurrence = Optional; }
                fieldattribute(No__Series; PurchaseHeader."No. Series") { Occurrence = Optional; }
                fieldattribute(Posting_No__Series; PurchaseHeader."Posting No. Series") { Occurrence = Optional; }
                fieldattribute(Receiving_No__Series; PurchaseHeader."Receiving No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; PurchaseHeader."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; PurchaseHeader."Tax Liable") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; PurchaseHeader."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Applies_to_ID; PurchaseHeader."Applies-to ID") { Occurrence = Optional; }
                fieldattribute(VAT_Base_Discount__; PurchaseHeader."VAT Base Discount %") { Occurrence = Optional; }
                fieldattribute(Status; PurchaseHeader."Status") { Occurrence = Optional; }
                fieldattribute(Invoice_Discount_Calculation; PurchaseHeader."Invoice Discount Calculation") { Occurrence = Optional; }
                fieldattribute(Invoice_Discount_Value; PurchaseHeader."Invoice Discount Value") { Occurrence = Optional; }
                fieldattribute(Send_IC_Document; PurchaseHeader."Send IC Document") { Occurrence = Optional; }
                fieldattribute(IC_Status; PurchaseHeader."IC Status") { Occurrence = Optional; }
                fieldattribute(Buy_from_IC_Partner_Code; PurchaseHeader."Buy-from IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Pay_to_IC_Partner_Code; PurchaseHeader."Pay-to IC Partner Code") { Occurrence = Optional; }
                fieldattribute(IC_Direction; PurchaseHeader."IC Direction") { Occurrence = Optional; }
                fieldattribute(Prepayment_No_; PurchaseHeader."Prepayment No.") { Occurrence = Optional; }
                fieldattribute(Last_Prepayment_No_; PurchaseHeader."Last Prepayment No.") { Occurrence = Optional; }
                fieldattribute(Prepmt__Cr__Memo_No_; PurchaseHeader."Prepmt. Cr. Memo No.") { Occurrence = Optional; }
                fieldattribute(Last_Prepmt__Cr__Memo_No_; PurchaseHeader."Last Prepmt. Cr. Memo No.") { Occurrence = Optional; }
                fieldattribute(Prepayment__; PurchaseHeader."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Prepayment_No__Series; PurchaseHeader."Prepayment No. Series") { Occurrence = Optional; }
                fieldattribute(Compress_Prepayment; PurchaseHeader."Compress Prepayment") { Occurrence = Optional; }
                fieldattribute(Prepayment_Due_Date; PurchaseHeader."Prepayment Due Date") { Occurrence = Optional; }
                fieldattribute(Prepmt__Cr__Memo_No__Series; PurchaseHeader."Prepmt. Cr. Memo No. Series") { Occurrence = Optional; }
                fieldattribute(Prepmt__Posting_Description; PurchaseHeader."Prepmt. Posting Description") { Occurrence = Optional; }
                fieldattribute(Prepmt__Pmt__Discount_Date; PurchaseHeader."Prepmt. Pmt. Discount Date") { Occurrence = Optional; }
                fieldattribute(Prepmt__Payment_Terms_Code; PurchaseHeader."Prepmt. Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Prepmt__Payment_Discount__; PurchaseHeader."Prepmt. Payment Discount %") { Occurrence = Optional; }
                fieldattribute(Quote_No_; PurchaseHeader."Quote No.") { Occurrence = Optional; }
                fieldattribute(Job_Queue_Status; PurchaseHeader."Job Queue Status") { Occurrence = Optional; }
                fieldattribute(Job_Queue_Entry_ID; PurchaseHeader."Job Queue Entry ID") { Occurrence = Optional; }
                fieldattribute(Incoming_Document_Entry_No_; PurchaseHeader."Incoming Document Entry No.") { Occurrence = Optional; }
                fieldattribute(Creditor_No_; PurchaseHeader."Creditor No.") { Occurrence = Optional; }
                fieldattribute(Payment_Reference; PurchaseHeader."Payment Reference") { Occurrence = Optional; }
                fieldattribute(Journal_Templ__Name; PurchaseHeader."Journal Templ. Name") { Occurrence = Optional; }
                fieldattribute(Dimension_Set_ID; PurchaseHeader."Dimension Set ID") { Occurrence = Optional; }
                fieldattribute(Invoice_Discount_Amount; PurchaseHeader."Invoice Discount Amount") { Occurrence = Optional; }
                fieldattribute(No__of_Archived_Versions; PurchaseHeader."No. of Archived Versions") { Occurrence = Optional; }
                fieldattribute(Doc__No__Occurrence; PurchaseHeader."Doc. No. Occurrence") { Occurrence = Optional; }
                fieldattribute(Campaign_No_; PurchaseHeader."Campaign No.") { Occurrence = Optional; }
                fieldattribute(Buy_from_Contact_No_; PurchaseHeader."Buy-from Contact No.") { Occurrence = Optional; }
                fieldattribute(Pay_to_Contact_No_; PurchaseHeader."Pay-to Contact No.") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; PurchaseHeader."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Partially_Invoiced; PurchaseHeader."Partially Invoiced") { Occurrence = Optional; }
                fieldattribute(Completely_Received; PurchaseHeader."Completely Received") { Occurrence = Optional; }
                fieldattribute(Posting_from_Whse__Ref_; PurchaseHeader."Posting from Whse. Ref.") { Occurrence = Optional; }
                fieldattribute(Location_Filter; PurchaseHeader."Location Filter") { Occurrence = Optional; }
                fieldattribute(Requested_Receipt_Date; PurchaseHeader."Requested Receipt Date") { Occurrence = Optional; }
                fieldattribute(Promised_Receipt_Date; PurchaseHeader."Promised Receipt Date") { Occurrence = Optional; }
                fieldattribute(Lead_Time_Calculation; PurchaseHeader."Lead Time Calculation") { Occurrence = Optional; }
                fieldattribute(Inbound_Whse__Handling_Time; PurchaseHeader."Inbound Whse. Handling Time") { Occurrence = Optional; }
                fieldattribute(Date_Filter; PurchaseHeader."Date Filter") { Occurrence = Optional; }
                fieldattribute(Vendor_Authorization_No_; PurchaseHeader."Vendor Authorization No.") { Occurrence = Optional; }
                fieldattribute(Return_Shipment_No_; PurchaseHeader."Return Shipment No.") { Occurrence = Optional; }
                fieldattribute(Return_Shipment_No__Series; PurchaseHeader."Return Shipment No. Series") { Occurrence = Optional; }
                fieldattribute(Ship; PurchaseHeader."Ship") { Occurrence = Optional; }
                fieldattribute(Last_Return_Shipment_No_; PurchaseHeader."Last Return Shipment No.") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; PurchaseHeader."Price Calculation Method") { Occurrence = Optional; }
                //fieldattribute(Id;PurchaseHeader."Id"){}
                fieldattribute(Assigned_User_ID; PurchaseHeader."Assigned User ID") { Occurrence = Optional; }
                fieldattribute(Pending_Approvals; PurchaseHeader."Pending Approvals") { Occurrence = Optional; }
                fieldattribute(Generate_Autoinvoices; PurchaseHeader."Generate Autoinvoices") { Occurrence = Optional; }
                fieldattribute(Generate_Autocredit_Memo; PurchaseHeader."Generate Autocredit Memo") { Occurrence = Optional; }
                fieldattribute(Corrected_Invoice_No_; PurchaseHeader."Corrected Invoice No.") { Occurrence = Optional; }
                fieldattribute(Due_Date_Modified; PurchaseHeader."Due Date Modified") { Occurrence = Optional; }
                fieldattribute(Invoice_Type; PurchaseHeader."Invoice Type") { Occurrence = Optional; }
                fieldattribute(Cr__Memo_Type; PurchaseHeader."Cr. Memo Type") { Occurrence = Optional; }
                fieldattribute(Special_Scheme_Code; PurchaseHeader."Special Scheme Code") { Occurrence = Optional; }
                fieldattribute(Operation_Description; PurchaseHeader."Operation Description") { Occurrence = Optional; }
                fieldattribute(Correction_Type; PurchaseHeader."Correction Type") { Occurrence = Optional; }
                fieldattribute(Operation_Description_2; PurchaseHeader."Operation Description 2") { Occurrence = Optional; }
                fieldattribute(Succeeded_Company_Name; PurchaseHeader."Succeeded Company Name") { Occurrence = Optional; }
                fieldattribute(Succeeded_VAT_Registration_No_; PurchaseHeader."Succeeded VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(ID_Type; PurchaseHeader."ID Type") { Occurrence = Optional; }
                fieldattribute(Do_Not_Send_To_SII; PurchaseHeader."Do Not Send To SII") { Occurrence = Optional; }
                fieldattribute(Applies_to_Bill_No_; PurchaseHeader."Applies-to Bill No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Bank_Acc__Code; PurchaseHeader."Vendor Bank Acc. Code") { Occurrence = Optional; }
                // fieldattribute(Pay_at_Code;PurchaseHeader."Pay-at Code"){}
                trigger OnAfterInsertRecord()
                var
                    Pedidos: Record "Purchase Header";
                begin
                    // Hacer aqui las validaciones
                    Pedidos := PurchaseHeader;
                    If Pedidos.Insert() Then;
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
