page 50127 CourseCardPart
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CourseDetails;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(InstructorPic;Rec.InstructorPic)
                {
                    ApplicationArea = All;
                    
                }
                field(email;Rec.email)
                {
                    ApplicationArea = All;
                    
                }
            }
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
    
    var
        myInt: Integer;
}