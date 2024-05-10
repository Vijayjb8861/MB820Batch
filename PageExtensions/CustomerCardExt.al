pageextension 50122 CustomerCardExt extends "Customer Card"
{
    layout
    {

        addafter(General)
        {
            group(SocialMediaInfo)
            {
                field(Facebook; Rec.Facebook)
                {
                    ApplicationArea = All;
                }
                field(LinkedIn; Rec.LinkedIn)
                {
                    ApplicationArea = All;
                }
            }
        }

        // addafter(Address)
        // {

        // }
    }

    actions
    {
        // Add changes to page actions here
        addafter("Account Detail")
        {
            action(MyActions)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category12;
                
                trigger OnAction()
                begin
                    Message('hey');
                end;
            }
        }
    }

    var
        myInt: Integer;
}