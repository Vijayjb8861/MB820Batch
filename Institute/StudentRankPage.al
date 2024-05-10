page 50103 StudentRankPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentRank;
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(USN;Rec.USN)
                {
                    ApplicationArea = All;
                    
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                field(Total;Rec.Total)
                {
                    ApplicationArea = All;
                    
                }
                field(Rank;Rec.Rank)
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
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        position: Integer;
    begin
        Rec.Reset();
        Rec.SetCurrentKey(Total); 
        Rec.Ascending(false);
        position := 1;

        Rec.FindSet();
        repeat begin
            Rec.Rank := position;
            Rec.Modify();
            Commit();
            position := position + 1;
        end
            until rec.Next() = 0;

    end;
}