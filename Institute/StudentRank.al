table 50131 StudentRank
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;USN; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Total; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Rank; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; USN)
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
    var
        
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