/// <summary>
/// XmlPort Resource (ID 90107).
/// </summary>
xmlport 90107 Resource
{
    Caption = 'Resource';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Resource; Resource)
            {
                UseTemporary = true;
                fieldattribute(No_; Resource."No.") { Occurrence = Optional; }
                fieldattribute(Type; Resource."Type") { Occurrence = Optional; }
                fieldattribute(Name; Resource."Name") { Occurrence = Optional; }
                fieldattribute(Search_Name; Resource."Search Name") { Occurrence = Optional; }
                fieldattribute(Name_2; Resource."Name 2") { Occurrence = Optional; }
                fieldattribute(Address; Resource."Address") { Occurrence = Optional; }
                fieldattribute(Address_2; Resource."Address 2") { Occurrence = Optional; }
                fieldattribute(City; Resource."City") { Occurrence = Optional; }
                fieldattribute(Social_Security_No_; Resource."Social Security No.") { Occurrence = Optional; }
                fieldattribute(Job_Title; Resource."Job Title") { Occurrence = Optional; }
                fieldattribute(Education; Resource."Education") { Occurrence = Optional; }
                fieldattribute(Contract_Class; Resource."Contract Class") { Occurrence = Optional; }
                fieldattribute(Employment_Date; Resource."Employment Date") { Occurrence = Optional; }
                fieldattribute(Resource_Group_No_; Resource."Resource Group No.") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_1_Code; Resource."Global Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_2_Code; Resource."Global Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Base_Unit_of_Measure; Resource."Base Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Direct_Unit_Cost; Resource."Direct Unit Cost") { Occurrence = Optional; }
                fieldattribute(Indirect_Cost__; Resource."Indirect Cost %") { Occurrence = Optional; }
                fieldattribute(Unit_Cost; Resource."Unit Cost") { Occurrence = Optional; }
                fieldattribute(Profit__; Resource."Profit %") { Occurrence = Optional; }
                fieldattribute(Price_Profit_Calculation; Resource."Price/Profit Calculation") { Occurrence = Optional; }
                fieldattribute(Unit_Price; Resource."Unit Price") { Occurrence = Optional; }
                fieldattribute(Vendor_No_; Resource."Vendor No.") { Occurrence = Optional; }
                fieldattribute(Last_Date_Modified; Resource."Last Date Modified") { Occurrence = Optional; }
                fieldattribute(Gen__Prod__Posting_Group; Resource."Gen. Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Post_Code; Resource."Post Code") { Occurrence = Optional; }
                fieldattribute(County; Resource."County") { Occurrence = Optional; }
                fieldattribute(Automatic_Ext__Texts; Resource."Automatic Ext. Texts") { Occurrence = Optional; }
                fieldattribute(No__Series; Resource."No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Group_Code; Resource."Tax Group Code") { Occurrence = Optional; }
                fieldattribute(VAT_Prod__Posting_Group; Resource."VAT Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Country_Region_Code; Resource."Country/Region Code") { Occurrence = Optional; }
                fieldattribute(IC_Partner_Purch__G_L_Acc__No_; Resource."IC Partner Purch. G/L Acc. No.") { Occurrence = Optional; }
                fieldattribute(Image; Resource."Image") { Occurrence = Optional; }
                fieldattribute(Privacy_Blocked; Resource."Privacy Blocked") { Occurrence = Optional; }
                fieldattribute(Coupled_to_CRM; Resource."Coupled to CRM") { Occurrence = Optional; }
                fieldattribute(Use_Time_Sheet; Resource."Use Time Sheet") { Occurrence = Optional; }
                fieldattribute(Time_Sheet_Owner_User_ID; Resource."Time Sheet Owner User ID") { Occurrence = Optional; }
                fieldattribute(Time_Sheet_Approver_User_ID; Resource."Time Sheet Approver User ID") { Occurrence = Optional; }
                fieldattribute(Default_Deferral_Template_Code; Resource."Default Deferral Template Code") { Occurrence = Optional; }
                fieldattribute(Service_Zone_Filter; Resource."Service Zone Filter") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    Res: Record Resource;
                    RecRef2: RecordRef;
                    ResourceRecRef: RecordRef;
                    PurchSetup: Record "Resources Setup";
                    NoSeriesMgt: Codeunit "No. Series";
                    ResourceTempl: Record Resource;
                    ResourceFldRef: FieldRef;
                    ResRecRef: RecordRef;
                    EmptyResourceRecRef: RecordRef;
                    EmptyResourceTemplRecRef: RecordRef;
                    ResFldRef: FieldRef;
                    EmptyResFldRef: FieldRef;
                    ResourceTemplFldRef: FieldRef;
                    EmptyResourceFldRef: FieldRef;
                    i: Integer;
                begin
                    If Resource."No." = 'TEMP' Then begin

                        PurchSetup.Get();
                        Res := Resource;
                        Res."No. Series" := PurchSetup."Resource Nos.";
                        Res."No." := NoSeriesMgt.GetNextNo(PurchSetup."Resource Nos.", Today, true);
                        Res.Insert();
                        ResourceTempl.FindFirst();
                        ResourceRecRef.Gettable(ResourceTempl);
                        EmptyResourceRecRef.Open(Database::Resource);
                        EmptyResourceRecRef.Init();
                        If Res.Get(Resource."No.") Then begin
                            ResRecRef.GetTable(Res);
                            for i := 1 to ResourceRecRef.FieldCount do begin
                                ResourceFldRef := ResourceRecRef.FieldIndex(i);
                                ResFldRef := ResRecRef.Field(ResourceFldRef.Number);
                                EmptyResourceFldRef := EmptyResourceRecRef.Field(ResourceFldRef.Number);
                                if (ResourceFldRef.Value <> EmptyResourceFldRef.Value) and (ResFldRef.Value = EmptyResourceFldRef.Value)
                                    then
                                    ResFldRef.Value := ResourceFldRef.Value;
                            end;
                        end;
                        ResRecRef.Modify();
                    end else begin
                        ResourceRecRef.Gettable(Resource);
                        EmptyResourceRecRef.Open(Database::Resource);
                        EmptyResourceRecRef.Init();
                        If Res.Get(Resource."No.") Then begin
                            ResRecRef.GetTable(Res);
                            for i := 1 to ResourceRecRef.FieldCount do begin
                                ResourceFldRef := ResourceRecRef.FieldIndex(i);
                                ResFldRef := ResRecRef.Field(ResourceFldRef.Number);
                                EmptyResourceFldRef := EmptyResourceRecRef.Field(ResourceFldRef.Number);
                                if (ResourceFldRef.Value <> EmptyResourceFldRef.Value)
                                    then
                                    ResFldRef.Value := ResourceFldRef.Value;
                            end;

                            ResRecRef.Modify();
                        end;

                        Resource."No." := Res."No.";
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
        exit(Resource."No.");
    end;

}
