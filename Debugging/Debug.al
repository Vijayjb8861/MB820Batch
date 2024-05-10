page 50113 Debugging
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

    procedure Addition()
    var
        num1, num2, Sum: Integer;
    begin
        num1 := 20;
        num2 := 50;
        Sum := num1 + num2;
        Message('The sum is %1',Sum);
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Addition();
    end;
}