page 50118 CourseList
{
    PageType = List;
    Caption = 'Course List Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CourseDetails;
    SourceTableView = where (CourseType = const(ILO));
    CardPageId = CourseCard;
    Editable = false;
    PromotedActionCategories = ',,,,userdefinedcategory';
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CourseID;Rec.CourseID)
                {
                    ApplicationArea = All;
                    
                }
                 field(CourseName;Rec.CourseName)
                {
                    ApplicationArea = All;
                    
                }
                 field(CourseType;Rec.CourseType)
                {
                    ApplicationArea = All;
                    
                    
                }
                 field(Price;Rec.Price)
                {
                    ApplicationArea = All;
                    
                }
                field(InstructorID;Rec.InstructorID)
                {
                    ApplicationArea = All;
                    
                }
                 field(phoneno;Rec.phoneno)
                {
                    ApplicationArea = All;
                    
                }
                 field(email;Rec.email)
                {
                    ApplicationArea = All;
                   
                    
                }
                 field(Website;Rec.Website)
                {
                    ApplicationArea = All;
                    
                }
                 field(AvgPrice;Rec.AvgPrice)
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
            action(Download)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = Download;
                RunObject = page "Customer List";
                
                trigger OnAction()
                begin
                  Message('the action is triggered');  
                end;
            }
        }
         
    }

}