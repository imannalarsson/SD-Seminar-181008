page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {

                }
                field(Code; Code)
                {
                    Visible = false;

                }
                field(Comment; Comment)
                {

                }
            }
        }

    }
    trigger OnNewRecord(BelowxRex: Boolean)
    begin
        SetupNewLine();
    end;

}