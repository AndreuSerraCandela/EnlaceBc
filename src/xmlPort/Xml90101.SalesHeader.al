/// <summary>
/// XmlPort SalesHeader (ID 90101).
/// </summary>
xmlport 90101 SalesHeader
{
    Caption = 'SalesHeader';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SalesHeader; "Sales Header")
            {
                UseTemporary = true;
                fieldattribute(Document_Type; SalesHeader."Document Type") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_No_; SalesHeader."Sell-to Customer No.") { Occurrence = Optional; }
                fieldattribute(No_; SalesHeader."No.") { Occurrence = Optional; }
                fieldattribute(Bill_to_Customer_No_; SalesHeader."Bill-to Customer No.") { Occurrence = Optional; }
                fieldattribute(Bill_to_Name; SalesHeader."Bill-to Name") { Occurrence = Optional; }
                fieldattribute(Bill_to_Name_2; SalesHeader."Bill-to Name 2") { Occurrence = Optional; }
                fieldattribute(Bill_to_Address; SalesHeader."Bill-to Address") { Occurrence = Optional; }
                fieldattribute(Bill_to_Address_2; SalesHeader."Bill-to Address 2") { Occurrence = Optional; }
                fieldattribute(Bill_to_City; SalesHeader."Bill-to City") { Occurrence = Optional; }
                fieldattribute(Bill_to_Contact; SalesHeader."Bill-to Contact") { Occurrence = Optional; }
                fieldattribute(Your_Reference; SalesHeader."Your Reference") { Occurrence = Optional; }
                fieldattribute(Ship_to_Code; SalesHeader."Ship-to Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_Name; SalesHeader."Ship-to Name") { Occurrence = Optional; }
                fieldattribute(Ship_to_Name_2; SalesHeader."Ship-to Name 2") { Occurrence = Optional; }
                fieldattribute(Ship_to_Address; SalesHeader."Ship-to Address") { Occurrence = Optional; }
                fieldattribute(Ship_to_Address_2; SalesHeader."Ship-to Address 2") { Occurrence = Optional; }
                fieldattribute(Ship_to_City; SalesHeader."Ship-to City") { Occurrence = Optional; }
                fieldattribute(Ship_to_Contact; SalesHeader."Ship-to Contact") { Occurrence = Optional; }
                fieldattribute(Order_Date; SalesHeader."Order Date") { Occurrence = Optional; }
                fieldattribute(Posting_Date; SalesHeader."Posting Date") { Occurrence = Optional; }
                fieldattribute(Shipment_Date; SalesHeader."Shipment Date") { Occurrence = Optional; }
                fieldattribute(Posting_Description; SalesHeader."Posting Description") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Code; SalesHeader."Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Due_Date; SalesHeader."Due Date") { Occurrence = Optional; }
                fieldattribute(Payment_Discount__; SalesHeader."Payment Discount %") { Occurrence = Optional; }
                fieldattribute(Pmt__Discount_Date; SalesHeader."Pmt. Discount Date") { Occurrence = Optional; }
                fieldattribute(Shipment_Method_Code; SalesHeader."Shipment Method Code") { Occurrence = Optional; }
                fieldattribute(Location_Code; SalesHeader."Location Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_1_Code; SalesHeader."Shortcut Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Shortcut_Dimension_2_Code; SalesHeader."Shortcut Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Customer_Posting_Group; SalesHeader."Customer Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; SalesHeader."Currency Code") { Occurrence = Optional; }
                fieldattribute(Currency_Factor; SalesHeader."Currency Factor") { Occurrence = Optional; }
                fieldattribute(Customer_Price_Group; SalesHeader."Customer Price Group") { Occurrence = Optional; }
                fieldattribute(Prices_Including_VAT; SalesHeader."Prices Including VAT") { Occurrence = Optional; }
                fieldattribute(Invoice_Disc__Code; SalesHeader."Invoice Disc. Code") { Occurrence = Optional; }
                fieldattribute(Customer_Disc__Group; SalesHeader."Customer Disc. Group") { Occurrence = Optional; }
                fieldattribute(Language_Code; SalesHeader."Language Code") { Occurrence = Optional; }
                fieldattribute(Salesperson_Code; SalesHeader."Salesperson Code") { Occurrence = Optional; }
                fieldattribute(Order_Class; SalesHeader."Order Class") { Occurrence = Optional; }
                fieldattribute(No__Printed; SalesHeader."No. Printed") { Occurrence = Optional; }
                fieldattribute(On_Hold; SalesHeader."On Hold") { Occurrence = Optional; }
                fieldattribute(Applies_to_Doc__Type; SalesHeader."Applies-to Doc. Type") { Occurrence = Optional; }
                fieldattribute(Applies_to_Doc__No_; SalesHeader."Applies-to Doc. No.") { Occurrence = Optional; }
                fieldattribute(Bal__Account_No_; SalesHeader."Bal. Account No.") { Occurrence = Optional; }
                fieldattribute(Ship; SalesHeader."Ship") { Occurrence = Optional; }
                fieldattribute(Invoice; SalesHeader."Invoice") { Occurrence = Optional; }
                fieldattribute(Print_Posted_Documents; SalesHeader."Print Posted Documents") { Occurrence = Optional; }
                fieldattribute(Shipping_No_; SalesHeader."Shipping No.") { Occurrence = Optional; }
                fieldattribute(Posting_No_; SalesHeader."Posting No.") { Occurrence = Optional; }
                fieldattribute(Last_Shipping_No_; SalesHeader."Last Shipping No.") { Occurrence = Optional; }
                fieldattribute(Last_Posting_No_; SalesHeader."Last Posting No.") { Occurrence = Optional; }
                fieldattribute(Prepayment_No_; SalesHeader."Prepayment No.") { Occurrence = Optional; }
                fieldattribute(Last_Prepayment_No_; SalesHeader."Last Prepayment No.") { Occurrence = Optional; }
                fieldattribute(Prepmt__Cr__Memo_No_; SalesHeader."Prepmt. Cr. Memo No.") { Occurrence = Optional; }
                fieldattribute(Last_Prepmt__Cr__Memo_No_; SalesHeader."Last Prepmt. Cr. Memo No.") { Occurrence = Optional; }
                fieldattribute(VAT_Registration_No_; SalesHeader."VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(Combine_Shipments; SalesHeader."Combine Shipments") { Occurrence = Optional; }
                fieldattribute(Reason_Code; SalesHeader."Reason Code") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; SalesHeader."Gen. Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(EU_3_Party_Trade; SalesHeader."EU 3-Party Trade") { Occurrence = Optional; }
                fieldattribute(Transaction_Type; SalesHeader."Transaction Type") { Occurrence = Optional; }
                fieldattribute(Transport_Method; SalesHeader."Transport Method") { Occurrence = Optional; }
                fieldattribute(VAT_Country_Region_Code; SalesHeader."VAT Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_Name; SalesHeader."Sell-to Customer Name") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_Name_2; SalesHeader."Sell-to Customer Name 2") { Occurrence = Optional; }
                fieldattribute(Sell_to_Address; SalesHeader."Sell-to Address") { Occurrence = Optional; }
                fieldattribute(Sell_to_Address_2; SalesHeader."Sell-to Address 2") { Occurrence = Optional; }
                fieldattribute(Sell_to_City; SalesHeader."Sell-to City") { Occurrence = Optional; }
                fieldattribute(Sell_to_Contact; SalesHeader."Sell-to Contact") { Occurrence = Optional; }
                fieldattribute(Bill_to_Post_Code; SalesHeader."Bill-to Post Code") { Occurrence = Optional; }
                fieldattribute(Bill_to_County; SalesHeader."Bill-to County") { Occurrence = Optional; }
                fieldattribute(Bill_to_Country_Region_Code; SalesHeader."Bill-to Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Sell_to_Post_Code; SalesHeader."Sell-to Post Code") { Occurrence = Optional; }
                fieldattribute(Sell_to_County; SalesHeader."Sell-to County") { Occurrence = Optional; }
                fieldattribute(Sell_to_Country_Region_Code; SalesHeader."Sell-to Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_Post_Code; SalesHeader."Ship-to Post Code") { Occurrence = Optional; }
                fieldattribute(Ship_to_County; SalesHeader."Ship-to County") { Occurrence = Optional; }
                fieldattribute(Ship_to_Country_Region_Code; SalesHeader."Ship-to Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Bal__Account_Type; SalesHeader."Bal. Account Type") { Occurrence = Optional; }
                fieldattribute(Exit_Point; SalesHeader."Exit Point") { Occurrence = Optional; }
                fieldattribute(Correction; SalesHeader."Correction") { Occurrence = Optional; }
                fieldattribute(Document_Date; SalesHeader."Document Date") { Occurrence = Optional; }
                fieldattribute(External_Document_No_; SalesHeader."External Document No.") { Occurrence = Optional; }
                fieldattribute(SalesHeaderArea; SalesHeader."Area") { Occurrence = Optional; }
                fieldattribute(Transaction_Specification; SalesHeader."Transaction Specification") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Code; SalesHeader."Payment Method Code") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Code; SalesHeader."Shipping Agent Code") { Occurrence = Optional; }
                fieldattribute(Package_Tracking_No_; SalesHeader."Package Tracking No.") { Occurrence = Optional; }
                fieldattribute(No__Series; SalesHeader."No. Series") { Occurrence = Optional; }
                fieldattribute(Posting_No__Series; SalesHeader."Posting No. Series") { Occurrence = Optional; }
                fieldattribute(Shipping_No__Series; SalesHeader."Shipping No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; SalesHeader."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; SalesHeader."Tax Liable") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; SalesHeader."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Reserve; SalesHeader."Reserve") { Occurrence = Optional; }
                fieldattribute(Applies_to_ID; SalesHeader."Applies-to ID") { Occurrence = Optional; }
                fieldattribute(VAT_Base_Discount__; SalesHeader."VAT Base Discount %") { Occurrence = Optional; }
                fieldattribute(Status; SalesHeader."Status") { Occurrence = Optional; }
                fieldattribute(Invoice_Discount_Calculation; SalesHeader."Invoice Discount Calculation") { Occurrence = Optional; }
                fieldattribute(Invoice_Discount_Value; SalesHeader."Invoice Discount Value") { Occurrence = Optional; }
                fieldattribute(Send_IC_Document; SalesHeader."Send IC Document") { Occurrence = Optional; }
                fieldattribute(IC_Status; SalesHeader."IC Status") { Occurrence = Optional; }
                fieldattribute(Sell_to_IC_Partner_Code; SalesHeader."Sell-to IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Bill_to_IC_Partner_Code; SalesHeader."Bill-to IC Partner Code") { Occurrence = Optional; }
                fieldattribute(IC_Direction; SalesHeader."IC Direction") { Occurrence = Optional; }
                fieldattribute(Prepayment__; SalesHeader."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Prepayment_No__Series; SalesHeader."Prepayment No. Series") { Occurrence = Optional; }
                fieldattribute(Compress_Prepayment; SalesHeader."Compress Prepayment") { Occurrence = Optional; }
                fieldattribute(Prepayment_Due_Date; SalesHeader."Prepayment Due Date") { Occurrence = Optional; }
                fieldattribute(Prepmt__Cr__Memo_No__Series; SalesHeader."Prepmt. Cr. Memo No. Series") { Occurrence = Optional; }
                fieldattribute(Prepmt__Posting_Description; SalesHeader."Prepmt. Posting Description") { Occurrence = Optional; }
                fieldattribute(Prepmt__Pmt__Discount_Date; SalesHeader."Prepmt. Pmt. Discount Date") { Occurrence = Optional; }
                fieldattribute(Prepmt__Payment_Terms_Code; SalesHeader."Prepmt. Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Prepmt__Payment_Discount__; SalesHeader."Prepmt. Payment Discount %") { Occurrence = Optional; }
                fieldattribute(Quote_No_; SalesHeader."Quote No.") { Occurrence = Optional; }
                fieldattribute(Quote_Valid_Until_Date; SalesHeader."Quote Valid Until Date") { Occurrence = Optional; }
                fieldattribute(Quote_Sent_to_Customer; SalesHeader."Quote Sent to Customer") { Occurrence = Optional; }
                fieldattribute(Quote_Accepted; SalesHeader."Quote Accepted") { Occurrence = Optional; }
                fieldattribute(Quote_Accepted_Date; SalesHeader."Quote Accepted Date") { Occurrence = Optional; }
                fieldattribute(Job_Queue_Status; SalesHeader."Job Queue Status") { Occurrence = Optional; }
                fieldattribute(Job_Queue_Entry_ID; SalesHeader."Job Queue Entry ID") { Occurrence = Optional; }
                fieldattribute(Company_Bank_Account_Code; SalesHeader."Company Bank Account Code") { Occurrence = Optional; }
                fieldattribute(Incoming_Document_Entry_No_; SalesHeader."Incoming Document Entry No.") { Occurrence = Optional; }
                fieldattribute(IsTest; SalesHeader."IsTest") { Occurrence = Optional; }
                fieldattribute(Sell_to_Phone_No_; SalesHeader."Sell-to Phone No.") { Occurrence = Optional; }
                fieldattribute(Sell_to_E_Mail; SalesHeader."Sell-to E-Mail") { Occurrence = Optional; }
                fieldattribute(Journal_Templ__Name; SalesHeader."Journal Templ. Name") { Occurrence = Optional; }
                fieldattribute(Work_Description; SalesHeader."Work Description") { Occurrence = Optional; }
                fieldattribute(Dimension_Set_ID; SalesHeader."Dimension Set ID") { Occurrence = Optional; }
                fieldattribute(Payment_Service_Set_ID; SalesHeader."Payment Service Set ID") { Occurrence = Optional; }
                fieldattribute(Direct_Debit_Mandate_ID; SalesHeader."Direct Debit Mandate ID") { Occurrence = Optional; }
                fieldattribute(Doc__No__Occurrence; SalesHeader."Doc. No. Occurrence") { Occurrence = Optional; }
                fieldattribute(Campaign_No_; SalesHeader."Campaign No.") { Occurrence = Optional; }
                fieldattribute(Sell_to_Contact_No_; SalesHeader."Sell-to Contact No.") { Occurrence = Optional; }
                fieldattribute(Bill_to_Contact_No_; SalesHeader."Bill-to Contact No.") { Occurrence = Optional; }
                fieldattribute(Opportunity_No_; SalesHeader."Opportunity No.") { Occurrence = Optional; }
                fieldattribute(Sell_to_Customer_Templ__Code; SalesHeader."Sell-to Customer Templ. Code") { Occurrence = Optional; }
                fieldattribute(Bill_to_Customer_Templ__Code; SalesHeader."Bill-to Customer Templ. Code") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; SalesHeader."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Shipping_Advice; SalesHeader."Shipping Advice") { Occurrence = Optional; }
                fieldattribute(Posting_from_Whse__Ref_; SalesHeader."Posting from Whse. Ref.") { Occurrence = Optional; }
                fieldattribute(Requested_Delivery_Date; SalesHeader."Requested Delivery Date") { Occurrence = Optional; }
                fieldattribute(Promised_Delivery_Date; SalesHeader."Promised Delivery Date") { Occurrence = Optional; }
                fieldattribute(Shipping_Time; SalesHeader."Shipping Time") { Occurrence = Optional; }
                fieldattribute(Outbound_Whse__Handling_Time; SalesHeader."Outbound Whse. Handling Time") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Service_Code; SalesHeader."Shipping Agent Service Code") { Occurrence = Optional; }
                fieldattribute(Receive; SalesHeader."Receive") { Occurrence = Optional; }
                fieldattribute(Return_Receipt_No_; SalesHeader."Return Receipt No.") { Occurrence = Optional; }
                fieldattribute(Return_Receipt_No__Series; SalesHeader."Return Receipt No. Series") { Occurrence = Optional; }
                fieldattribute(Last_Return_Receipt_No_; SalesHeader."Last Return Receipt No.") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; SalesHeader."Price Calculation Method") { Occurrence = Optional; }
                fieldattribute(Allow_Line_Disc_; SalesHeader."Allow Line Disc.") { Occurrence = Optional; }
                fieldattribute(Get_Shipment_Used; SalesHeader."Get Shipment Used") { Occurrence = Optional; }
                fieldattribute(Assigned_User_ID; SalesHeader."Assigned User ID") { Occurrence = Optional; }
                fieldattribute(Corrected_Invoice_No_; SalesHeader."Corrected Invoice No.") { Occurrence = Optional; }
                fieldattribute(Due_Date_Modified; SalesHeader."Due Date Modified") { Occurrence = Optional; }
                fieldattribute(Invoice_Type; SalesHeader."Invoice Type") { Occurrence = Optional; }
                fieldattribute(Cr__Memo_Type; SalesHeader."Cr. Memo Type") { Occurrence = Optional; }
                fieldattribute(Special_Scheme_Code; SalesHeader."Special Scheme Code") { Occurrence = Optional; }
                fieldattribute(Operation_Description; SalesHeader."Operation Description") { Occurrence = Optional; }
                fieldattribute(Correction_Type; SalesHeader."Correction Type") { Occurrence = Optional; }
                fieldattribute(Operation_Description_2; SalesHeader."Operation Description 2") { Occurrence = Optional; }
                fieldattribute(Succeeded_Company_Name; SalesHeader."Succeeded Company Name") { Occurrence = Optional; }
                fieldattribute(Succeeded_VAT_Registration_No_; SalesHeader."Succeeded VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(ID_Type; SalesHeader."ID Type") { Occurrence = Optional; }
                fieldattribute(Do_Not_Send_To_SII; SalesHeader."Do Not Send To SII") { Occurrence = Optional; }
                fieldattribute(Issued_By_Third_Party; SalesHeader."Issued By Third Party") { Occurrence = Optional; }
                fieldattribute(SII_First_Summary_Doc__No_; SalesHeader."SII First Summary Doc. No.") { Occurrence = Optional; }
                fieldattribute(SII_Last_Summary_Doc__No_; SalesHeader."SII Last Summary Doc. No.") { Occurrence = Optional; }
                fieldattribute(Applies_to_Bill_No_; SalesHeader."Applies-to Bill No.") { Occurrence = Optional; }
                fieldattribute(Cust__Bank_Acc__Code; SalesHeader."Cust. Bank Acc. Code") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    Pedido: Record "Sales Header";

                begin
                    If SalesHeader."No." <> '' Then Error('Falta implementar la mod. de un pedido');
                    Pedido := SalesHeader;
                    Pedido."No." := '';
                    Pedido.Insert(true);
                    Pedido.Validate("Sell-to Customer No.");
                    Pedido.Modify();
                    SalesHeader."No." := Pedido."No.";

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
    /// <summary>
    /// Devuelve.
    /// </summary>
    /// <returns>Return value of type Code[20].</returns>
    procedure Devuelve(): Code[20]
    begin
        exit(SalesHeader."No.");
    end;

}
