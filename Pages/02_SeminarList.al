page 50102 "CSD Seminar List"
//CSD1.00 - 2018-10-08 - D. E. Veloper
//Chapter 5 - Lab 2-6
{
    PageType = List;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }

    }

    actions
    {

        area(Navigation)
        {
            group("&Seminar")

            {
                action("Co&mments")
                {
                    //RunObject = Page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name" = const (Seminar),
                    //      "No." = field ("No.");

                    Image = Comment;

                }
                // >> Lab 8 1-2
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;

                }
                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2

            }
        }
        // >> Lab 8 1-2
        area(Processing)
        {
            action("Seminar Registration")
            {
                Caption = 'Seminar Registration';
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;

            }
        }
        // << Lab 8 1-2
    }
}