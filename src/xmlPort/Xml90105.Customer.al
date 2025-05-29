/// <summary>
/// XmlPort Customer (ID 90105).
/// </summary>
xmlport 90105 Customer
{
    Caption = 'Customer';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Customer; Customer)
            {
                UseTemporary = true;
                fieldattribute(No_; Customer."No.")
                {
                    trigger OnAfterAssignField()
                    begin
                        If Customer."No." = '' Then Customer."No." := 'TEMP';
                    end;
                }
                fieldattribute(Name; Customer."Name") { Occurrence = Optional; }
                fieldattribute(Search_Name; Customer."Search Name") { Occurrence = Optional; }
                fieldattribute(Name_2; Customer."Name 2") { Occurrence = Optional; }
                fieldattribute(Address; Customer."Address") { Occurrence = Optional; }
                fieldattribute(Address_2; Customer."Address 2") { Occurrence = Optional; }
                fieldattribute(City; Customer."City") { Occurrence = Optional; }
                fieldattribute(Contact; Customer."Contact") { Occurrence = Optional; }
                fieldattribute(Phone_No_; Customer."Phone No.") { Occurrence = Optional; }
                fieldattribute(Telex_No_; Customer."Telex No.") { Occurrence = Optional; }
                fieldattribute(Document_Sending_Profile; Customer."Document Sending Profile") { Occurrence = Optional; }
                fieldattribute(Ship_to_Code; Customer."Ship-to Code") { Occurrence = Optional; }
                fieldattribute(Our_Account_No_; Customer."Our Account No.") { Occurrence = Optional; }
                fieldattribute(Territory_Code; Customer."Territory Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_1_Code; Customer."Global Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_2_Code; Customer."Global Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Chain_Name; Customer."Chain Name") { Occurrence = Optional; }
                fieldattribute(Budgeted_Amount; Customer."Budgeted Amount") { Occurrence = Optional; }
                fieldattribute(Customer_Posting_Group; Customer."Customer Posting Group") { Occurrence = Optional; }
                fieldattribute(Currency_Code; Customer."Currency Code") { Occurrence = Optional; }
                fieldattribute(Customer_Price_Group; Customer."Customer Price Group") { Occurrence = Optional; }
                fieldattribute(Language_Code; Customer."Language Code") { Occurrence = Optional; }
                fieldattribute(Statistics_Group; Customer."Statistics Group") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Code; Customer."Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Fin__Charge_Terms_Code; Customer."Fin. Charge Terms Code") { Occurrence = Optional; }
                fieldattribute(Salesperson_Code; Customer."Salesperson Code") { Occurrence = Optional; }
                fieldattribute(Shipment_Method_Code; Customer."Shipment Method Code") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Code; Customer."Shipping Agent Code") { Occurrence = Optional; }
                fieldattribute(Place_of_Export; Customer."Place of Export") { Occurrence = Optional; }
                fieldattribute(Invoice_Disc__Code; Customer."Invoice Disc. Code") { Occurrence = Optional; }
                fieldattribute(Customer_Disc__Group; Customer."Customer Disc. Group") { Occurrence = Optional; }
                fieldattribute(Country_Region_Code; Customer."Country/Region Code") { Occurrence = Optional; }
                fieldattribute(Collection_Method; Customer."Collection Method") { Occurrence = Optional; }
                fieldattribute(Amount; Customer."Amount") { Occurrence = Optional; }
                fieldattribute(Blocked; Customer."Blocked") { Occurrence = Optional; }
                fieldattribute(Invoice_Copies; Customer."Invoice Copies") { Occurrence = Optional; }
                fieldattribute(Last_Statement_No_; Customer."Last Statement No.") { Occurrence = Optional; }
                fieldattribute(Print_Statements; Customer."Print Statements") { Occurrence = Optional; }
                fieldattribute(Bill_to_Customer_No_; Customer."Bill-to Customer No.") { Occurrence = Optional; }
                fieldattribute(Priority; Customer."Priority") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Code; Customer."Payment Method Code") { Occurrence = Optional; }
                fieldattribute(Last_Modified_Date_Time; Customer."Last Modified Date Time") { Occurrence = Optional; }
                fieldattribute(Last_Date_Modified; Customer."Last Date Modified") { Occurrence = Optional; }
                fieldattribute(Application_Method; Customer."Application Method") { Occurrence = Optional; }
                fieldattribute(Prices_Including_VAT; Customer."Prices Including VAT") { Occurrence = Optional; }
                fieldattribute(Location_Code; Customer."Location Code") { Occurrence = Optional; }
                fieldattribute(Fax_No_; Customer."Fax No.") { Occurrence = Optional; }
                fieldattribute(Telex_Answer_Back; Customer."Telex Answer Back") { Occurrence = Optional; }
                fieldattribute(VAT_Registration_No_; Customer."VAT Registration No.") { Occurrence = Optional; }
                fieldattribute(Combine_Shipments; Customer."Combine Shipments") { Occurrence = Optional; }
                fieldattribute(Gen__Bus__Posting_Group; Customer."Gen. Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(GLN; Customer."GLN") { Occurrence = Optional; }
                fieldattribute(Post_Code; Customer."Post Code") { Occurrence = Optional; }
                fieldattribute(County; Customer."County") { Occurrence = Optional; }
                fieldattribute(EORI_Number; Customer."EORI Number") { Occurrence = Optional; }
                fieldattribute(Use_GLN_in_Electronic_Document; Customer."Use GLN in Electronic Document") { Occurrence = Optional; }
                fieldattribute(E_Mail; Customer."E-Mail") { Occurrence = Optional; }
                fieldattribute(Home_Page; Customer."Home Page") { Occurrence = Optional; }
                fieldattribute(Reminder_Terms_Code; Customer."Reminder Terms Code") { Occurrence = Optional; }
                fieldattribute(No__Series; Customer."No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Area_Code; Customer."Tax Area Code") { Occurrence = Optional; }
                fieldattribute(Tax_Liable; Customer."Tax Liable") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Group; Customer."VAT Bus. Posting Group") { Occurrence = Optional; }
                fieldattribute(Reserve; Customer."Reserve") { Occurrence = Optional; }
                fieldattribute(Block_Payment_Tolerance; Customer."Block Payment Tolerance") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Code; Customer."IC Partner Code") { Occurrence = Optional; }
                fieldattribute(Prepayment__; Customer."Prepayment %") { Occurrence = Optional; }
                fieldattribute(Partner_Type; Customer."Partner Type") { Occurrence = Optional; }
                fieldattribute(Intrastat_Partner_Type; Customer."Intrastat Partner Type") { Occurrence = Optional; }
                fieldattribute(Image; Customer."Image") { Occurrence = Optional; }
                fieldattribute(Privacy_Blocked; Customer."Privacy Blocked") { Occurrence = Optional; }
                fieldattribute(Disable_Search_by_Name; Customer."Disable Search by Name") { Occurrence = Optional; }
                fieldattribute(Preferred_Bank_Account_Code; Customer."Preferred Bank Account Code") { Occurrence = Optional; }
                //   fieldattribute(Coupled_to_CRM; Customer."Coupled to CRM") { Occurrence = Optional; } Field 'Coupled to CRM' is marked for removal. Reason: Replaced by flow field Coupled to Dataverse. Tag: 23.0.
                fieldattribute(Coupled_to_CRM; Customer."Coupled to Dataverse") { Occurrence = Optional; }
                fieldattribute(Cash_Flow_Payment_Terms_Code; Customer."Cash Flow Payment Terms Code") { Occurrence = Optional; }
                fieldattribute(Primary_Contact_No_; Customer."Primary Contact No.") { Occurrence = Optional; }
                fieldattribute(Contact_Type; Customer."Contact Type") { Occurrence = Optional; }
                fieldattribute(Mobile_Phone_No_; Customer."Mobile Phone No.") { Occurrence = Optional; }
                fieldattribute(Responsibility_Center; Customer."Responsibility Center") { Occurrence = Optional; }
                fieldattribute(Shipping_Advice; Customer."Shipping Advice") { Occurrence = Optional; }
                fieldattribute(Shipping_Time; Customer."Shipping Time") { Occurrence = Optional; }
                fieldattribute(Shipping_Agent_Service_Code; Customer."Shipping Agent Service Code") { Occurrence = Optional; }
                fieldattribute(Service_Zone_Code; Customer."Service Zone Code") { Occurrence = Optional; }
                fieldattribute(Price_Calculation_Method; Customer."Price Calculation Method") { Occurrence = Optional; }
                fieldattribute(Allow_Line_Disc_; Customer."Allow Line Disc.") { Occurrence = Optional; }
                fieldattribute(Base_Calendar_Code; Customer."Base Calendar Code") { Occurrence = Optional; }
                fieldattribute(Copy_Sell_to_Addr__to_Qte_From; Customer."Copy Sell-to Addr. to Qte From") { Occurrence = Optional; }
                fieldattribute(Validate_EU_Vat_Reg__No_; Customer."Validate EU Vat Reg. No.") { Occurrence = Optional; }
                fieldattribute(Currency_Id; Customer."Currency Id") { Occurrence = Optional; }
                fieldattribute(Payment_Terms_Id; Customer."Payment Terms Id") { Occurrence = Optional; }
                fieldattribute(Shipment_Method_Id; Customer."Shipment Method Id") { Occurrence = Optional; }
                fieldattribute(Payment_Method_Id; Customer."Payment Method Id") { Occurrence = Optional; }
                fieldattribute(Tax_Area_ID; Customer."Tax Area ID") { Occurrence = Optional; }
                fieldattribute(Contact_ID; Customer."Contact ID") { Occurrence = Optional; }
                fieldattribute(Contact_Graph_Id; Customer."Contact Graph Id") { Occurrence = Optional; }
                fieldattribute(Payment_Days_Code; Customer."Payment Days Code") { Occurrence = Optional; }
                fieldattribute(Non_Paymt__Periods_Code; Customer."Non-Paymt. Periods Code") { Occurrence = Optional; }
                fieldattribute(Not_in_AEAT; Customer."Not in AEAT") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    Cust: Record Customer;
                    RecRef2: RecordRef;
                    CustomerRecRef: RecordRef;
                    SalesSetup: Record "Sales & Receivables Setup";
                    CustomerTemplMgt: Codeunit "Customer Templ. Mgt.";
                    NoSeriesMgt: Codeunit NoSeriesManagement;
                    CustomerTempl: Record "Customer Templ.";
                    CustomerFldRef: FieldRef;
                    CustRecRef: RecordRef;
                    EmptyCustomerRecRef: RecordRef;
                    EmptyCustomerTemplRecRef: RecordRef;
                    CustFldRef: FieldRef;
                    EmptyCustFldRef: FieldRef;
                    CustomerTemplFldRef: FieldRef;
                    EmptyCustomerFldRef: FieldRef;
                    i: Integer;
                begin
                    If Customer."No." = 'TEMP' Then begin

                        SalesSetup.Get();
                        SalesSetup.TestField("Customer Nos.");
                        Cust := Customer;
                        Cust."No. Series" := SalesSetup."Customer Nos.";
                        Cust."No." := NoSeriesMgt.GetNextNo(SalesSetup."Customer Nos.", Today, true);
                        Cust.Insert();
                        SalesSetup.TestField(CustomerTemplate);
                        CustomerTempl.Get(SalesSetup.CustomerTemplate);
                        CustomerTemplMgt.ApplyCustomerTemplate(Cust, CustomerTempl);
                    end else begin
                        CustomerRecRef.Gettable(Customer);
                        EmptyCustomerRecRef.Open(Database::Customer);
                        EmptyCustomerRecRef.Init();
                        If Cust.Get(Customer."No.") Then begin
                            CustRecRef.GetTable(Cust);
                            for i := 1 to CustomerRecRef.FieldCount do begin
                                CustomerFldRef := CustomerRecRef.FieldIndex(i);
                                CustFldRef := CustRecRef.Field(CustomerFldRef.Number);
                                EmptyCustomerFldRef := EmptyCustomerRecRef.Field(CustomerFldRef.Number);
                                if (CustomerFldRef.Value <> EmptyCustomerFldRef.Value)
                                    then
                                    CustFldRef.Value := CustomerFldRef.Value;
                            end;

                            CustRecRef.Modify();
                        end;

                        Customer."No." := Cust."No.";
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
        exit(Customer."No.");
    end;

}
