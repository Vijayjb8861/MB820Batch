page 50128 StudentCardDetails
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentDetails;
    
    layout
    {
        area(Content)
        {
            group(General)
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
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}