page 50117 ReadingQuery
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // SourceTable = TableName;
    
    layout
    {
        area(Content)
        {
            // repeater(GroupName)
            // {
            //     field(Name; NameSource)
            //     {
            //         ApplicationArea = All;
                    
            //     }
            // }
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
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        CodeUnitVar: Codeunit QueryCodeUnit; 
    begin
        CodeUnitVar.Run()
    end;
}



codeunit 50104 QueryCodeUnit
{
    trigger OnRun()
    begin
      CustQuery.Open();
      while CustQuery.Read() do
        Message('Customer Name %1 Sales Quantity %2',CustQuery.Cust_Name,CustQuery.SalesQuantity); 
    end;
    
    var
        CustQuery: Query "Customer Sales by Quantity";
}