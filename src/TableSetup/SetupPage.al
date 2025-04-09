page 50109 "My App Setup"
{
    Caption = 'My App Setup';
    PageType = Card;
    SourceTable = MyAppSetUp;
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    ApplicationArea = all;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Setup';

                //primary key is not added
                field("Important Account"; Rec."Important Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Important Account field.', Comment = '%';
                }
                field("Important Item"; Rec."Important Item")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Important Item field.', Comment = '%';
                }
                field("Important Setup 1"; Rec."Important Setup 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Important Setup 1 field.', Comment = '%';
                }
            }
        }
    }
    trigger OnInit()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}