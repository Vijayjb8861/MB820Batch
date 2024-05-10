xmlport 50100 MyXmlport1
{
    Direction = Export;
    Format = Xml;


    schema
    {
        textelement(CustomerContent)
        {
            tableelement(CustNode;Customer)
            {
                fieldattribute(CustNo;CustNode."No.")
                {
                    
                }
                fieldelement(CustName ; CustNode.Name){}
                fieldelement(City; CustNode.City){}
                
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}