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
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    var
        "CSD Seminar": Record "CSD Seminar";

    trigger OnOpenPage()
    begin
        SetRange("User ID", UserId;
    end;

    trigger OnAfterGetRecord()
    begin
        if "CSD Seminar".Get("Seminar No.") then;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear("CSD Seminar");
    end;

    local procedure OpenSeminarCard()
    begin
        if "CSD Seminar"."No." <> '' then
            Page.Run(page::"CSD Seminar Card", "CSD Seminar");
    end;
}