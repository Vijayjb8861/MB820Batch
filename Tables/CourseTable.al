table 50130 CourseDetails
{
    DataClassification = ToBeClassified;
    Caption = 'Course Deatils';
    DataCaptionFields = CourseID,CourseName;
    
    
    fields
    {
        field(1;CourseID;Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; CourseName; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Price; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "ILO","Offline","Self-Paced";
        }
        field(5; InstructorID; code[20])
        {
            DataClassification = ToBeClassified;
          //  TableRelation = Resource where(Type = const(Person));

        //   TableRelation = if (CourseType = const(ILO)) Resource
        //   else if (CourseType = const(Offline)) Customer
        //   else if (CourseType = const("Self-Paced")) Resource;

            TableRelation = Customer;
        }
        field(6; phoneno; text[10])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
         field(7; email; text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if not email.EndsWith('@gmail.com') then 
                    Error('Enter the right email, ending with @gmail.com');
            end;
        }
        field(8; Website; text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(9; AvgPrice; Integer)
        {
           
            FieldClass = FlowField;
            CalcFormula = average(CourseDetails.Price);
        }

        field(10; InstructorPic; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
        }
    }
    
    keys
    {
        key(pk; CourseID)
        {
            Clustered = true;
        }
        key(sk; CourseName)
        {
            
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown; CourseID,CourseName,Price,email){}

        fieldgroup(Brick; CourseID,CourseName){}
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        Message('the data is inserted');
    end;
    
    trigger OnModify()
    begin
        Message('the record is modified');
    end;
    
    trigger OnDelete()
    begin
        Message('the record is deleted');
    end;
    
    trigger OnRename()
    begin
        Message('the recorded is renamed');
    end;
    
}