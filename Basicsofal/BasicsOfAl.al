page 50121 BasicsOfAL
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // SourceTable = TableName;

    layout
    {
        area(Content)
        {
            // repeater(GroupName)
            // {
            //     field(Name; NameSource)
            //     {
            //         ApplicationArea = All;

            //     }
            // }
        }
        area(Factboxes)
        {

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
        globalint: Integer;
        CodeunitRef: Codeunit MyCodeunit1;

    trigger OnOpenPage()
    var
        localvar: Integer;
        result: Integer;
        num1, num2 : decimal;
        Color: Option Green,Red,Blue;
        MyFavColor: Enum MyColors;
    begin
        localvar := 10;
        globalint := 290;
        // CodeunitRef.globalprocedure();
        // Message('the global var is %1 and the local var is %2',globalint,localvar);
        //    result := CodeunitRef.addition(10,40);
        //    Message('the result is %1',result);
        // num1 := 40.231;
        // num2 := 15.2;
        // result := num1 div num2;
        // Message(' %1 ', result);

        // //options

        // Color := Color::Red;
        // Message('the color hold %1',Color);

        // MyFavColor := MyColors::Black;
        // Message('myfavcolors hold %1',MyFavColor);

        //frequently used procedures

        // Message('1st line');
        // Error('There is an error in the code');
        //  Message('3rdst line');

        if localvar = 10 then begin
            Error('the localvar is 10');
        end;

    end;


}


enum 50120 MyColors
{
    Extensible = true;

    value(0; Red)
    {
    }
    value(1; Blue)
    {

    }
    value(2; Black)
    {

    }
}






