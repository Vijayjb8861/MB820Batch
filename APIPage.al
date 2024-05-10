page 50132 StudentAPIPage
{
    PageType = API;
    Caption = 'apiPageName';
    APIPublisher = 'Student';
    APIGroup = 'StudentGorup';
    APIVersion = 'v1.0';
    EntityName = 'ABC';
    EntitySetName = 'ABC';
    SourceTable = StudentDetails;
    DelayedInsert = true;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name;Rec.Name)
                {
                    Caption = 'fieldCaption';
                    
                }
                 field(Email;Rec.Email)
                {
                    Caption = 'fieldCaption';
                    
                }
                 field(USN;Rec.USN)
                {
                    Caption = 'fieldCaption';
                    
                }
            }
        }
    }
}