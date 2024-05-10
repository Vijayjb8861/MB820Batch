codeunit 50115 MyCodeunit1
{

    local procedure localprodedure()
    var
        myInt: Integer;
    begin
         Message('local procedure');
    end;

    procedure globalprocedure()
    var
        myInt: Integer;
    begin
        Message('global procedure'); 
    end;

    procedure addition(a : Integer;b: Integer):Integer
    var
        c: Integer;
    begin
       c := a + b;
       exit(c);
    end;

    procedure subtraction()
    var
        myInt: Integer;
    begin
        
    end;

    trigger OnRun()
    begin
        Message('onrun trigger is called of codeunit - MyCodeunit1');
    end;
    
    var
        myInt: Integer;
}