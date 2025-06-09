/// <summary>
/// XmlPort Items (ID 90100).
/// </summary>
xmlport 90100 Items
{
    Caption = 'Items';
    Encoding = UTF8;
    Format = Xml;
    UseDefaultNamespace = true;
    UseRequestPage = false;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Item; Item)
            {
                UseTemporary = true;
                fieldattribute(No_; Item."No.") { Occurrence = Optional; }
                fieldattribute(No__2; Item."No. 2") { Occurrence = Optional; }
                fieldattribute(Description; Item."Description") { Occurrence = Optional; }
                fieldattribute(Search_Description; Item."Search Description") { Occurrence = Optional; }
                fieldattribute(Description_2; Item."Description 2") { Occurrence = Optional; }
                fieldattribute(Assembly_BOM; Item."Assembly BOM") { Occurrence = Optional; }
                fieldattribute(Base_Unit_of_Measure; Item."Base Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Price_Unit_Conversion; Item."Price Unit Conversion") { Occurrence = Optional; }
                fieldattribute(Type; Item."Type") { Occurrence = Optional; }
                fieldattribute(Inventory_Posting_Group; Item."Inventory Posting Group") { Occurrence = Optional; }
                fieldattribute(Shelf_No_; Item."Shelf No.") { Occurrence = Optional; }
                fieldattribute(Item_Disc__Group; Item."Item Disc. Group") { Occurrence = Optional; }
                fieldattribute(Allow_Invoice_Disc_; Item."Allow Invoice Disc.") { Occurrence = Optional; }
                fieldattribute(Statistics_Group; Item."Statistics Group") { Occurrence = Optional; }
                fieldattribute(Commission_Group; Item."Commission Group") { Occurrence = Optional; }
                fieldattribute(Unit_Price; Item."Unit Price") { Occurrence = Optional; }
                fieldattribute(Price_Profit_Calculation; Item."Price/Profit Calculation") { Occurrence = Optional; }
                fieldattribute(Profit__; Item."Profit %") { Occurrence = Optional; }
                fieldattribute(Costing_Method; Item."Costing Method") { Occurrence = Optional; }
                fieldattribute(Unit_Cost; Item."Unit Cost") { Occurrence = Optional; }
                fieldattribute(Standard_Cost; Item."Standard Cost") { Occurrence = Optional; }
                fieldattribute(Last_Direct_Cost; Item."Last Direct Cost") { Occurrence = Optional; }
                fieldattribute(Indirect_Cost__; Item."Indirect Cost %") { Occurrence = Optional; }
                fieldattribute(Cost_is_Adjusted; Item."Cost is Adjusted") { Occurrence = Optional; }
                fieldattribute(Allow_Online_Adjustment; Item."Allow Online Adjustment") { Occurrence = Optional; }
                fieldattribute(Vendor_No_; Item."Vendor No.") { Occurrence = Optional; }
                fieldattribute(Vendor_Item_No_; Item."Vendor Item No.") { Occurrence = Optional; }
                fieldattribute(Lead_Time_Calculation; Item."Lead Time Calculation") { Occurrence = Optional; }
                fieldattribute(Reorder_Point; Item."Reorder Point") { Occurrence = Optional; }
                fieldattribute(Maximum_Inventory; Item."Maximum Inventory") { Occurrence = Optional; }
                fieldattribute(Reorder_Quantity; Item."Reorder Quantity") { Occurrence = Optional; }
                fieldattribute(Alternative_Item_No_; Item."Alternative Item No.") { Occurrence = Optional; }
                fieldattribute(Unit_List_Price; Item."Unit List Price") { Occurrence = Optional; }
                fieldattribute(Duty_Due__; Item."Duty Due %") { Occurrence = Optional; }
                fieldattribute(Duty_Code; Item."Duty Code") { Occurrence = Optional; }
                fieldattribute(Gross_Weight; Item."Gross Weight") { Occurrence = Optional; }
                fieldattribute(Net_Weight; Item."Net Weight") { Occurrence = Optional; }
                fieldattribute(Units_per_Parcel; Item."Units per Parcel") { Occurrence = Optional; }
                fieldattribute(Unit_Volume; Item."Unit Volume") { Occurrence = Optional; }
                fieldattribute(Durability; Item."Durability") { Occurrence = Optional; }
                fieldattribute(Freight_Type; Item."Freight Type") { Occurrence = Optional; }
                fieldattribute(Tariff_No_; Item."Tariff No.") { Occurrence = Optional; }
                fieldattribute(Duty_Unit_Conversion; Item."Duty Unit Conversion") { Occurrence = Optional; }
                fieldattribute(Country_Region_Purchased_Code; Item."Country/Region Purchased Code") { Occurrence = Optional; }
                fieldattribute(Budget_Quantity; Item."Budget Quantity") { Occurrence = Optional; }
                fieldattribute(Budgeted_Amount; Item."Budgeted Amount") { Occurrence = Optional; }
                fieldattribute(Budget_Profit; Item."Budget Profit") { Occurrence = Optional; }
                fieldattribute(Blocked; Item."Blocked") { Occurrence = Optional; }
                fieldattribute(Block_Reason; Item."Block Reason") { Occurrence = Optional; }
                fieldattribute(Last_DateTime_Modified; Item."Last DateTime Modified") { Occurrence = Optional; }
                fieldattribute(Last_Date_Modified; Item."Last Date Modified") { Occurrence = Optional; }
                fieldattribute(Last_Time_Modified; Item."Last Time Modified") { Occurrence = Optional; }
                fieldattribute(Price_Includes_VAT; Item."Price Includes VAT") { Occurrence = Optional; }
                fieldattribute(VAT_Bus__Posting_Gr__Price; Item."VAT Bus. Posting Gr. (Price)") { Occurrence = Optional; }
                fieldattribute(Gen__Prod__Posting_Group; Item."Gen. Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Picture; Item."Picture") { Occurrence = Optional; }
                fieldattribute(Country_Region_of_Origin_Code; Item."Country/Region of Origin Code") { Occurrence = Optional; }
                fieldattribute(Automatic_Ext__Texts; Item."Automatic Ext. Texts") { Occurrence = Optional; }
                fieldattribute(No__Series; Item."No. Series") { Occurrence = Optional; }
                fieldattribute(Tax_Group_Code; Item."Tax Group Code") { Occurrence = Optional; }
                fieldattribute(VAT_Prod__Posting_Group; Item."VAT Prod. Posting Group") { Occurrence = Optional; }
                fieldattribute(Reserve; Item."Reserve") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_1_Code; Item."Global Dimension 1 Code") { Occurrence = Optional; }
                fieldattribute(Global_Dimension_2_Code; Item."Global Dimension 2 Code") { Occurrence = Optional; }
                fieldattribute(Stockout_Warning; Item."Stockout Warning") { Occurrence = Optional; }
                fieldattribute(Prevent_Negative_Inventory; Item."Prevent Negative Inventory") { Occurrence = Optional; }
                fieldattribute(Cost_of_Open_Production_Orders; Item."Cost of Open Production Orders") { Occurrence = Optional; }
                fieldattribute(Application_Wksh__User_ID; Item."Application Wksh. User ID") { Occurrence = Optional; }
                fieldattribute(Coupled_to_CRM; Item."Coupled to CRM") { Occurrence = Optional; }
                fieldattribute(Assembly_Policy; Item."Assembly Policy") { Occurrence = Optional; }
                fieldattribute(GTIN; Item."GTIN") { Occurrence = Optional; }
                fieldattribute(Default_Deferral_Template_Code; Item."Default Deferral Template Code") { Occurrence = Optional; }
                fieldattribute(Low_Level_Code; Item."Low-Level Code") { Occurrence = Optional; }
                fieldattribute(Lot_Size; Item."Lot Size") { Occurrence = Optional; }
                fieldattribute(Serial_Nos_; Item."Serial Nos.") { Occurrence = Optional; }
                fieldattribute(Last_Unit_Cost_Calc__Date; Item."Last Unit Cost Calc. Date") { Occurrence = Optional; }
                fieldattribute(Rolled_up_Material_Cost; Item."Rolled-up Material Cost") { Occurrence = Optional; }
                fieldattribute(Rolled_up_Capacity_Cost; Item."Rolled-up Capacity Cost") { Occurrence = Optional; }
                fieldattribute(Scrap__; Item."Scrap %") { Occurrence = Optional; }
                fieldattribute(Inventory_Value_Zero; Item."Inventory Value Zero") { Occurrence = Optional; }
                fieldattribute(Discrete_Order_Quantity; Item."Discrete Order Quantity") { Occurrence = Optional; }
                fieldattribute(Minimum_Order_Quantity; Item."Minimum Order Quantity") { Occurrence = Optional; }
                fieldattribute(Maximum_Order_Quantity; Item."Maximum Order Quantity") { Occurrence = Optional; }
                fieldattribute(Safety_Stock_Quantity; Item."Safety Stock Quantity") { Occurrence = Optional; }
                fieldattribute(Order_Multiple; Item."Order Multiple") { Occurrence = Optional; }
                fieldattribute(Safety_Lead_Time; Item."Safety Lead Time") { Occurrence = Optional; }
                fieldattribute(Flushing_Method; Item."Flushing Method") { Occurrence = Optional; }
                fieldattribute(Replenishment_System; Item."Replenishment System") { Occurrence = Optional; }
                fieldattribute(Rounding_Precision; Item."Rounding Precision") { Occurrence = Optional; }
                fieldattribute(Sales_Unit_of_Measure; Item."Sales Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Purch__Unit_of_Measure; Item."Purch. Unit of Measure") { Occurrence = Optional; }
                fieldattribute(Time_Bucket; Item."Time Bucket") { Occurrence = Optional; }
                fieldattribute(Reordering_Policy; Item."Reordering Policy") { Occurrence = Optional; }
                fieldattribute(Include_Inventory; Item."Include Inventory") { Occurrence = Optional; }
                fieldattribute(Manufacturing_Policy; Item."Manufacturing Policy") { Occurrence = Optional; }
                fieldattribute(Rescheduling_Period; Item."Rescheduling Period") { Occurrence = Optional; }
                fieldattribute(Lot_Accumulation_Period; Item."Lot Accumulation Period") { Occurrence = Optional; }
                fieldattribute(Dampener_Period; Item."Dampener Period") { Occurrence = Optional; }
                fieldattribute(Dampener_Quantity; Item."Dampener Quantity") { Occurrence = Optional; }
                fieldattribute(Overflow_Level; Item."Overflow Level") { Occurrence = Optional; }
                fieldattribute(Manufacturer_Code; Item."Manufacturer Code") { Occurrence = Optional; }
                fieldattribute(Item_Category_Code; Item."Item Category Code") { Occurrence = Optional; }
                fieldattribute(Created_From_Nonstock_Item; Item."Created From Nonstock Item") { Occurrence = Optional; }
                fieldattribute(Purchasing_Code; Item."Purchasing Code") { Occurrence = Optional; }
                fieldattribute(Service_Item_Group; Item."Service Item Group") { Occurrence = Optional; }
                fieldattribute(Item_Tracking_Code; Item."Item Tracking Code") { Occurrence = Optional; }
                fieldattribute(Lot_Nos_; Item."Lot Nos.") { Occurrence = Optional; }
                fieldattribute(Expiration_Calculation; Item."Expiration Calculation") { Occurrence = Optional; }
                fieldattribute(Warehouse_Class_Code; Item."Warehouse Class Code") { Occurrence = Optional; }
                fieldattribute(Special_Equipment_Code; Item."Special Equipment Code") { Occurrence = Optional; }
                fieldattribute(Put_away_Template_Code; Item."Put-away Template Code") { Occurrence = Optional; }
                fieldattribute(Put_away_Unit_of_Measure_Code; Item."Put-away Unit of Measure Code") { Occurrence = Optional; }
                fieldattribute(Phys_Invt_Counting_Period_Code; Item."Phys Invt Counting Period Code") { Occurrence = Optional; }
                fieldattribute(Last_Counting_Period_Update; Item."Last Counting Period Update") { Occurrence = Optional; }
                fieldattribute(Use_Cross_Docking; Item."Use Cross-Docking") { Occurrence = Optional; }
                fieldattribute(Next_Counting_Start_Date; Item."Next Counting Start Date") { Occurrence = Optional; }
                fieldattribute(Next_Counting_End_Date; Item."Next Counting End Date") { Occurrence = Optional; }
                fieldattribute(Unit_of_Measure_Id; Item."Unit of Measure Id") { Occurrence = Optional; }
                fieldattribute(Tax_Group_Id; Item."Tax Group Id") { Occurrence = Optional; }
                fieldattribute(Sales_Blocked; Item."Sales Blocked") { Occurrence = Optional; }
                fieldattribute(Purchasing_Blocked; Item."Purchasing Blocked") { Occurrence = Optional; }
                fieldattribute(Item_Category_Id; Item."Item Category Id") { Occurrence = Optional; }
                fieldattribute(Inventory_Posting_Group_Id; Item."Inventory Posting Group Id") { Occurrence = Optional; }
                fieldattribute(Gen__Prod__Posting_Group_Id; Item."Gen. Prod. Posting Group Id") { Occurrence = Optional; }
                fieldattribute(Over_Receipt_Code; Item."Over-Receipt Code") { Occurrence = Optional; }
                fieldattribute(Cost_Regulation__; Item."Cost Regulation %") { Occurrence = Optional; }
                fieldattribute(Routing_No_; Item."Routing No.") { Occurrence = Optional; }
                fieldattribute(Production_BOM_No_; Item."Production BOM No.") { Occurrence = Optional; }
                fieldattribute(Single_Level_Material_Cost; Item."Single-Level Material Cost") { Occurrence = Optional; }
                fieldattribute(Single_Level_Capacity_Cost; Item."Single-Level Capacity Cost") { Occurrence = Optional; }
                fieldattribute(Single_Level_Subcontrd__Cost; Item."Single-Level Subcontrd. Cost") { Occurrence = Optional; }
                fieldattribute(Single_Level_Cap__Ovhd_Cost; Item."Single-Level Cap. Ovhd Cost") { Occurrence = Optional; }
                fieldattribute(Single_Level_Mfg__Ovhd_Cost; Item."Single-Level Mfg. Ovhd Cost") { Occurrence = Optional; }
                fieldattribute(Overhead_Rate; Item."Overhead Rate") { Occurrence = Optional; }
                fieldattribute(Rolled_up_Subcontracted_Cost; Item."Rolled-up Subcontracted Cost") { Occurrence = Optional; }
                fieldattribute(Rolled_up_Mfg__Ovhd_Cost; Item."Rolled-up Mfg. Ovhd Cost") { Occurrence = Optional; }
                fieldattribute(Rolled_up_Cap__Overhead_Cost; Item."Rolled-up Cap. Overhead Cost") { Occurrence = Optional; }
                fieldattribute(Order_Tracking_Policy; Item."Order Tracking Policy") { Occurrence = Optional; }
                fieldattribute(Critical; Item."Critical") { Occurrence = Optional; }
                fieldattribute(Common_Item_No_; Item."Common Item No.") { Occurrence = Optional; }
                trigger OnAfterInsertRecord()
                var
                    Prod: Record Item;
                    RecRef2: RecordRef;
                    ItemRecRef: RecordRef;
                    ItemSetup: Record 313;
                    ItemTemplMgt: Codeunit "Item Templ. Mgt.";
                    NoSeriesMgt: Codeunit "No. Series";
                    ItemTempl: Record "Item Templ.";
                    ItemFldRef: FieldRef;
                    ProdRecRef: RecordRef;
                    EmptyItemRecRef: RecordRef;
                    EmptyItemTemplRecRef: RecordRef;
                    ProdFldRef: FieldRef;
                    EmptyProdFldRef: FieldRef;
                    ItemTemplFldRef: FieldRef;
                    EmptyItemFldRef: FieldRef;
                    i: Integer;
                begin
                    If Item."No." = 'TEMP' Then begin

                        ItemSetup.Get();
                        ItemSetup.TestField("Item Nos.");
                        Prod := Item;
                        Prod."No. Series" := ItemSetup."Item Nos.";
                        Prod."No." := NoSeriesMgt.GetNextNo(ItemSetup."Item Nos.", Today, true);
                        Prod.Insert();
                        ItemSetup.TestField(ItemTemplate);
                        ItemTempl.Get(ItemSetup.ItemTemplate);
                        ItemTemplMgt.ApplyItemTemplate(Prod, ItemTempl);
                    end else begin
                        ItemRecRef.Gettable(Item);
                        EmptyItemRecRef.Open(Database::Item);
                        EmptyItemRecRef.Init();
                        If Prod.Get(Item."No.") Then begin
                            ProdRecRef.GetTable(Prod);
                            for i := 1 to ItemRecRef.FieldCount do begin
                                ItemFldRef := ItemRecRef.FieldIndex(i);
                                ProdFldRef := ProdRecRef.Field(ItemFldRef.Number);
                                EmptyItemFldRef := EmptyItemRecRef.Field(ItemFldRef.Number);
                                if (ItemFldRef.Value <> EmptyItemFldRef.Value)
                                    then
                                    ProdFldRef.Value := ItemFldRef.Value;
                            end;

                            ProdRecRef.Modify();
                        end;

                        Item."No." := Prod."No.";
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
        exit(Item."No.");
    end;

}
