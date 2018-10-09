page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminar Manager Activities';
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                field(Planned; Planned)
                {
                    Caption = 'Planned';

                }
                field(Registered; Registered)
                {
                    Caption = 'Registered';

                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;

                    }
                }
            }
            cuegroup("For Posting")
            {
                field(Closed; Closed)
                {

                }
            }

        }
    }

    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;
    end;

}