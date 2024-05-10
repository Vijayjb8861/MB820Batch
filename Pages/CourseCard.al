page 50119 CourseCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CourseDetails;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(CourseID;Rec.CourseID)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    
                }
                 field(CourseName;Rec.CourseName)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                    
                    
                }
                 field(CourseType;Rec.CourseType)
                {
                    ApplicationArea = All;
                    
                }
                
                field(InstructorID;Rec.InstructorID)
                {
                    ApplicationArea = All;
                    Importance = Standard;
                }
                field(phoneno;Rec.phoneno)
                {
                    ApplicationArea = All;
                  //  Importance = Additional;
                    ShowMandatory = true;
                    
                }
                 field(InstructorPic;Rec.InstructorPic)
                {
                    ApplicationArea = All;
                    Visible = false;
                    
                }
                 
            }
            group(Pricing)
            {
                 field(Price;Rec.Price)
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
            }

            part(CustomerSalesLine;"Customer Sales Lines")
            {
                ApplicationArea = All;
                
            }
        }
        area(Factboxes)
        {
            // part(CustomerSalesLine;"Customer Sales Lines")
            // {
            //     ApplicationArea = All;
                
            // }
            part(part2; CourseCardPart)
            {
                ApplicationArea = All;
                SubPageLink = CourseID = field(CourseID);
                
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
        area(Reporting)
        {
            action(ActionName2)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
        area(Creation)
        {
            action(ActionName3)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }

    }
}