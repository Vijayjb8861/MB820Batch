page 50141 StudentListDetails
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentDetails;
    CardPageId = StudentCardDetails;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(USN;Rec.USN)
                {
                    ApplicationArea = All;
                    
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                field(Email;Rec.Email)
                {
                    ApplicationArea = All;
                    
                }
                field(Physics;Rec.Physics)
                {
                    ApplicationArea = All;
                    
                }
                field(Chemistry;Rec.Chemistry)
                {
                    ApplicationArea = All;
                    
                }
                field(Biology;Rec.Biology)
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
            action(Rank)
            {
                ApplicationArea = All;
                RunObject = page StudentRankPage;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}