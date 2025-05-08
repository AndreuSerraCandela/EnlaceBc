tableextension 90147 ConfSetup extends "General Posting Setup"
{
    fields
    {
        field(50100; "Cta. Gasto Rebu"; Code[20])
        {
            trigger OnLookup()
            begin
                if "View All Accounts on Lookup" then
                    GLAccountCategoryMgt.LookupGLAccountWithoutCategory("Sales Account")
                else
                    LookupGLAccount(
                      "Cta. Gasto Rebu", GLAccountCategory."Account Category"::Income,
                      StrSubstNo(TwoSubCategoriesTxt, GLAccountCategoryMgt.GetIncomeProdSales(), GLAccountCategoryMgt.GetIncomeService()));
            end;

            trigger OnValidate()
            begin
                CheckGLAcc("Cta. Gasto Rebu");
            end;
        }
    }
    var
        GLAccountCategoryMgt: Codeunit "G/L Account Category Mgt.";
        GLAccountCategory: Record "G/L Account Category";
        TwoSubCategoriesTxt: Label '%1|%2', Locked = true;
}