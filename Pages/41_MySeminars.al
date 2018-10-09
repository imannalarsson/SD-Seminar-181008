page 50141 "CSD Mt Seminars"
{
    PageType = ListPart;
    SourceTable = "CSD My Seminar";
    Caption = 'My Seminars';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Seminar No."; "Seminar No.")
                {

                }
                field(Name; Seminar.Name)
                {

                }
                field(Duration; Seminar."Seminar Duration")
                {

                }
                field(Price; Seminar."Seminar Price")
                {

                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Open)
            {
                trigger OnAction();
                begin
                    OpenSeminarCard();
                end;
            }
        }
    }

    var
        Seminar: Record "CSD Seminar";

    trigger OnOpenPage()
    begin
        SetRange("User ID", UserId);
    end;

    trigger OnAfterGetRecord()
    begin
        if Seminar.Get("Seminar No.") then;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear(Seminar);
    end;

    local procedure OpenSeminarCard()
    begin
        if Seminar."No." <> '' then
            Page.Run(page::"CSD Seminar Card", Seminar);
    end;
}