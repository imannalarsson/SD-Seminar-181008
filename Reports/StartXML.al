report 50148 StartXML
{
    Caption = 'Start XML';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;
    UseRequestPage = false;

    trigger OnInitReport();
    var
        MyXmlPort: XmlPort MyXmlport;
    begin
        MyXmlPort.run;
    end;

    var
        myInt: Integer;
}