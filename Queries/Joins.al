query 50103 "Customer Sales by Quantity"
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Cust;Customer)
        {
            column(Cust_No;"No.")
            {
                
            }
            column(Cust_Name;Name)
            {
                
            }
            // filter(FilterName; SourceFieldName)
            // {
                
            // }
            dataitem(SalesLine;"Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Cust."No.";
                SqlJoinType = InnerJoin;
                column(SalesQuantity;Quantity)
                {
                    Method = Sum;
                    ColumnFilter = SalesQuantity = filter(>20);
                }
            }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}