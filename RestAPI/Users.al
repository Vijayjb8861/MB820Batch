table 50118 Users
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            
        }
        field(2; Name; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Email; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Web-ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; ID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}