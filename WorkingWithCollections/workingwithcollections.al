page 50125 Collections
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

    trigger OnOpenPage()
    var
        MyArray: array[5] of text;  //declare an array
        myarray2: array[2, 2] of Integer;
        newarray: array[3] of text;
        name: Text[50];
        city : text[50];

        cities: List of [Text];
        newlist: List of [text];

        mydictionary: Dictionary of [text, Text];
        mydictionary2: Dictionary of [text, List of [text]];
        countrynames: List of [text];
        capitals: List of [text];
        i, total : Integer;
        Customerref : Record Customer;
       
    begin
        // MyArray[1] := 'Rizwan';
        // MyArray[2] := 'Vijay';
        // MyArray[3] := 'Yash';
        // MyArray[4] := 'Varun';
        // MyArray[5] := 'Ram';

        // myarray2[1,1] := 1;
        // myarray2[1,2] := 2;
        // myarray2[2,1] := 3;
        // myarray2[2,2] := 4;

        // CopyArray(newarray,MyArray,3,3);

        // name := MyArray[3];
        // Message(name);

        //List

        cities.Add('Delhi');
        cities.Add('mumbai');
        cities.Add('bengaluru');
        cities.Add('ahmadabad');
        cities.Add('indore');

        //    Message('the no of cities is %1',cities.Count); 

        //    Message('%1',cities.Contains('Delhi'));

        //    Message('the 4th city is %1',cities.Get(4));

        // cities.Set(2, 'chennai');

        // Message('%1', cities.Contains('mumbai'));

        // // cities.Set(3,'lucknow')

        // Message('%1', cities.IndexOf('indore'));

        // cities.Remove('ahmadabad');
        // Message('%1', cities.Contains('ahmadabad'));

        newlist := cities.GetRange(2, 3);
        //  Message('%1', newlist.Get(2));

        //dictionary

        if (Customerref.FindSet()) then
        repeat  
            Message(Customerref.Name);
            until (Customerref.Next() = 0);
        

        mydictionary.Add('IND', 'Delhi');
        mydictionary.Add('NEPAL', 'Kathmandu');
        mydictionary.Add('Srilanka', 'Columbia');

        // Message('the capital of nepal is %1', mydictionary.Get('NEPAL'));

        countrynames := mydictionary.Keys;
        // Message('%1',countrynames.Get(3));
        capitals := mydictionary.Values;
        // Message('%1',capitals.Get(2));

        mydictionary2.Add('Capitals', capitals);
        mydictionary2.Add('countrynames', countrynames);

        //  Message('%1',mydictionary2.Get('countrynames').Get(2));


        //loops
        /* 1. for-to-do
        2. for-down-do
        3. foreach
        4. while-do
        5. repeat until */

        //for-to-do

        // for i := 1 to 5 do begin
        //     total := total + 5;
        // end;

        //Message('total is %1', total);

        // foreach city in cities do begin
        //    // Message(city);
        // end;

        // while i<8 do begin
        //     total := total +5;
        //     i := i + 1;
        // end;

       // Message('total is %1', total);

        // repeat
        //     total := total +5;
        //     i := i + 1;
        //     until i<8

    

    end;

    
}