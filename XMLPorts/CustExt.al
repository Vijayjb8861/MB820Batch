pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addafter(CustomerLedgerEntries)
        {
            action(ExportXML)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category12;
                RunObject = xmlport 50100;
                Image = Export;
                
                trigger OnAction()
                begin
                    
                end;
            }
            action(ImportXML)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category12;
                RunObject = xmlport 50102;
                Image = Import;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }

    }
    
    var
        myInt: Integer;
}
