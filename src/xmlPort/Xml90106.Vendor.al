/// <summary>
/// XmlPort Vendor (ID 90106).
/// </summary>
xmlport 90106 Vendor
{
    Caption = 'Vendor';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Vendor; Vendor)
            {
                UseTemporary = true;
                fieldattribute(No_; Vendor."No.") { Occurrence = Optional; }
                fieldattribute(Name; Vendor."Name") { Occurrence = Optional; }
                fieldattribute(Search_Name; Vendor."Search Name") { Occurrence = Optional; }
                fieldattribute(Name_2; Vendor."Name 2") { Occurrence = Optional; }
                fieldattribute(Address; Vendor."Address") { Occurrence = Optional; }
                fieldattribute(Address_2; Vendor."Address 2") { Occurrence = Optional; }
                fieldattribute(City; Vendor."City") { Occurrence = Optional; }
                fieldattribute(Contact; Vendor."Contact") { Occurrence = Optional; }
                fieldattribute(Phone_No_; Vendor."Phone No.") { Occurrence = Optional; }
                fieldattribute(Telex_No_; Vendor."Telex No.") { Occurrence = Optional; }
                fieldattribute(Our_Account_No_; Vendor."Our Account No.") { Occurrence = Optional; }
                fieldattribute(Territory_Code; Vendor."Territory Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_1_Code; Vendor."Global Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_2_Code; Vendor."Global Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Budgeted_Amount; Vendor."Budgeted Amount") { Occurrence = Optional; }
                fieldattribute(Vendor_Posting_Group; Vendor."Vendor Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; Vendor."Currency Code") { Occurrence = Optional; }
                fieldattribute(Language_Code; Vendor."Language Code") { Occurrence = Optional; }
                fieldattribute(Statistics_Group; Vendor."Statistics Group") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Code; Vendor."Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Fin__Charge_Terms_Code; Vendor."Fin. Charge Terms Code") { Occurrence = Optional; }
                fieldattribute(Purchaser_Code; Vendor."Purchaser Code") { Occurrence = Optional; }
                fieldattribute(Shipment_Method_Code; Vendor."Shipment Method Code") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Code; Vendor."Shipping Agent Code") { Occurrence = Optional; }
                fieldattribute(Invoice_Disc__Code; Vendor."Invoice Disc. Code") { Occurrence = Optional; }
                fieldattribute(Country_Region_Code; Vendor."Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Blocked; Vendor."Blocked") { Occurrence = Optional; }
                fieldattribute(Pay_to_Vendor_No_; Vendor."Pay-to Vendor No.") { Occurrence = Optional; }
                fieldattribute(Priority; Vendor."Priority") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Code; Vendor."Payment Method Code") { Occurrence = Optional; }
                fieldattribute(Last_Modified_Date_Time; Vendor."Last Modified Date Time") { Occurrence = Optional; }
                fieldattribute(Last_Date_Modified; Vendor."Last Date Modified") { Occurrence = Optional; }
                fieldattribute(Application_Method; Vendor."Application Method") { Occurrence = Optional; }
                fieldattribute(Prices_Including_VAT; Vendor."Prices Including VAT") { Occurrence = Optional; }
                fieldattribute(Fax_No_; Vendor."Fax No.") { Occurrence = Optional; }
                fieldattribute(Telex_Answer_Back; Vendor."Telex Answer Back") { Occurrence = Optional; }
                fieldattribute(VAT_Registration_No_; Vendor."VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; Vendor."Gen. Bus. Posting Group") { Occurrence = Optional; }
                // fieldattribute(Picture;Vendor."Picture"){}
                fieldattribute(GLN; Vendor."GLN") { Occurrence = Optional; }
                fieldattribute(Post_Code; Vendor."Post Code") { Occurrence = Optional; }
                fieldattribute(County; Vendor."County") { Occurrence = Optional; }
                fieldattribute(EORI_Number; Vendor."EORI Number") { Occurrence = Optional; }
                fieldattribute(E_Mail; Vendor."E-Mail") { Occurrence = Optional; }
                fieldattribute(Home_Page; Vendor."Home Page") { Occurrence = Optional; }
                fieldattribute(No__Series; Vendor."No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; Vendor."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; Vendor."Tax Liable") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; Vendor."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Block_Payment_Tolerance; Vendor."Block Payment Tolerance") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Code; Vendor."IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Prepayment__; Vendor."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Partner_Type; Vendor."Partner Type") { Occurrence = Optional; }
                fieldattribute(Intrastat_Partner_Type; Vendor."Intrastat Partner Type") { Occurrence = Optional; }
                fieldattribute(Image; Vendor."Image") { Occurrence = Optional; }
                fieldattribute(Privacy_Blocked; Vendor."Privacy Blocked") { Occurrence = Optional; }
                fieldattribute(Disable_Search_by_Name; Vendor."Disable Search by Name") { Occurrence = Optional; }
                fieldattribute(Creditor_No_; Vendor."Creditor No.") { Occurrence = Optional; }
                fieldattribute(Preferred_Bank_Account_Code; Vendor."Preferred Bank Account Code") { Occurrence = Optional; }
                //fieldattribute(Coupled_to_CRM; Vendor."Coupled to CRM") { Occurrence = Optional; } Field 'Coupled to CRM' is marked for removal. Reason: Replaced by flow field Coupled to Dataverse. Tag: 23.0.
                fieldattribute(Coupled_to_CRM; Vendor."Coupled to Dataverse") { Occurrence = Optional; }
                fieldattribute(Cash_Flow_Payment_Terms_Code; Vendor."Cash Flow Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Primary_Contact_No_; Vendor."Primary Contact No.") { Occurrence = Optional; }
                fieldattribute(Mobile_Phone_No_; Vendor."Mobile Phone No.") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; Vendor."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Location_Code; Vendor."Location Code") { Occurrence = Optional; }
                fieldattribute(Lead_Time_Calculation; Vendor."Lead Time Calculation") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; Vendor."Price Calculation Method") { Occurrence = Optional; }
                fieldattribute(Base_Calendar_Code; Vendor."Base Calendar Code") { Occurrence = Optional; }
                fieldattribute(Document_Sending_Profile; Vendor."Document Sending Profile") { Occurrence = Optional; }
                fieldattribute(Validate_EU_Vat_Reg__No_; Vendor."Validate EU Vat Reg. No.") { Occurrence = Optional; }
                fieldattribute(Currency_Id; Vendor."Currency Id") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Id; Vendor."Payment Terms Id") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Id; Vendor."Payment Method Id") { Occurrence = Optional; }
                fieldattribute(Over_Receipt_Code; Vendor."Over-Receipt Code") { Occurrence = Optional; }
                fieldattribute(Payment_Days_Code; Vendor."Payment Days Code") { Occurrence = Optional; }
                fieldattribute(Non_Paymt__Periods_Code; Vendor."Non-Paymt. Periods Code") { Occurrence = Optional; }
                // fieldattribute(Self_Employed;Vendor."Self Employed"){}
                trigger OnAfterInsertRecord()
                var
                    Vend: Record Vendor;
                    RecRef2: RecordRef;
                    VendorRecRef: RecordRef;
                    PurchSetup: Record 312;
                    VendorTemplMgt: Codeunit "Vendor Templ. Mgt.";
                    NoSeriesMgt: Codeunit NoSeriesManagement;
                    VendorTempl: Record "Vendor Templ.";
                    VendorFldRef: FieldRef;
                    VendRecRef: RecordRef;
                    EmptyVendorRecRef: RecordRef;
                    EmptyVendorTemplRecRef: RecordRef;
                    VendFldRef: FieldRef;
                    EmptyVendFldRef: FieldRef;
                    VendorTemplFldRef: FieldRef;
                    EmptyVendorFldRef: FieldRef;
                    i: Integer;
                begin
                    If Vendor."No." = 'TEMP' Then begin

                        PurchSetup.Get();
                        PurchSetup.TestField("Vendor Nos.");
                        Vend := Vendor;
                        Vend."No. Series" := PurchSetup."Vendor Nos.";
                        Vend."No." := NoSeriesMgt.GetNextNo(PurchSetup."Vendor Nos.", Today, true);
                        Vend.Insert();
                        PurchSetup.TestField(VendorTemplate);
                        VendorTempl.Get(PurchSetup.VendorTemplate);
                        VendorTemplMgt.ApplyVendorTemplate(Vend, VendorTempl);
                    end else begin
                        VendorRecRef.Gettable(Vendor);
                        EmptyVendorRecRef.Open(Database::Vendor);
                        EmptyVendorRecRef.Init();
                        If Vend.Get(Vendor."No.") Then begin
                            VendRecRef.GetTable(Vend);
                            for i := 1 to VendorRecRef.FieldCount do begin
                                VendorFldRef := VendorRecRef.FieldIndex(i);
                                VendFldRef := VendRecRef.Field(VendorFldRef.Number);
                                EmptyVendorFldRef := EmptyVendorRecRef.Field(VendorFldRef.Number);
                                if (VendorFldRef.Value <> EmptyVendorFldRef.Value)
                                    then
                                    VendFldRef.Value := VendorFldRef.Value;
                            end;

                            VendRecRef.Modify();
                        end;

                        Vendor."No." := Vend."No.";
                    end;
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
        exit(Vendor."No.");
    end;

}
