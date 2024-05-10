tableextension 50110 CustomerExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50110;Facebook; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(50111; LinkedIn; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        modify(Address)
        {
            Caption = 'Location';
        }
    }

    
    
    keys
    {
        // Add changes to keys here
        key(mykey; "No.",Name)
        {
            
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        addlast(DropDown;"E-Mail"){}

    }
    
    var
        myInt: Integer;
}