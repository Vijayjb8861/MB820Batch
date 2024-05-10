report 50105 "Item Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = Excel;
    // DefaultLayout = RDLC;
    // RDLCLayout = 'Item Report.RDL';


    dataset
    {
        dataitem(Item;Item)
        {
           // RequestFilterFields = "Item Category Code","Item Category Id";
            DataItemTableView = where(Description = const('ATHENS Desk'));
            column(Item_Category_Id;"Item Category Id")
            {
                
            }
            column(Description;Description)
            {
                
            }
            column(Item_Category_Code;"Item Category Code")
            {
                
            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                Message('we are on the predataitem');
                Message('It doesn''t fetch as its in pre data item  ' + Item."Item Category Id" + Item.Description);

            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                Message('we are on onaftergetrecord trigger');
                Message('It fetches the data as its onaftergetrecord' + Item."Item Category Id" + Item.Description);
            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin
                 Message('we are on postdataitem trigger');
            end;
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }

        trigger OnOpenPage()
        var
            myInt: Integer;
        begin
            Message('we are on request page trigger');
        end;
    }
    
    rendering
    {
        layout(Word)
        {
            Type = Word;
            LayoutFile = 'Customer Report.docx';
        }
        layout(Excel)
        {
            Type = Excel;
            LayoutFile = 'Customer Report.xlsx';
        }
        layout(RDLC)
        {
            Type = RDLC;
            LayoutFile = 'Customer Report.RDL';
        }
    }
    
    var
        myInt: Integer;

    trigger OnInitReport()
    begin
       Message('we are on init trigger');
        myInt := 10;
    end; 

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        Message('Not Yet Processes');
        Message('myint is %1',myInt);
    end;  

    trigger OnPostReport()
    var
        myInt: Integer;
    begin
        
    end;

}