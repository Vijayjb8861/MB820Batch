query 50101 CustomerList
{
    QueryType = Normal;

    
    elements
    {
        dataitem(Cust_Ledger_entry; "Cust. Ledger Entry")
        {
           // DataItemTableFilter = "Sales (LCY)" = filter(>400);
            column(Cust_Name; "Customer Name")
            {
                
            }
            // column(Sales_LCY_; "Sales (LCY)")
            // {
            //    // ColumnFilter = Sales_LCY_ = filter(>300);
            // }
            filter(Sales_LCY; "Sales (LCY)")
            {
                
            }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        SetRange(Sales_LCY,10000,16000);
    end;
}