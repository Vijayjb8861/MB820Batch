report 50101 "Customer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
   // DefaultRenderingLayout = LayoutName;
   WordLayout = 'Customer Repo.docx';
   DefaultLayout = Word;

    dataset
    {
        dataitem(Customer;Customer)
        {
            column(No_;"No.")
            {
                
            }
            column(Name;Name)
            {
                
            }
            column(Balance;Balance)
            {
                
            }
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

    }
    
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }
    
    var
        myInt: Integer;
}