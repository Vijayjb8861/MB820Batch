page 50140 UsersPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Users;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;

                }
                field("Web-ID"; Rec."Web-ID")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(GetDataFromRestAPI)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    http_client: HttpClient;
                    http_responseMsg: HttpResponseMessage;
                    response: Text;
                begin
                    if http_client.Get('https://jsonplaceholder.typicode.com/users', http_responseMsg) then begin
                        http_responseMsg.Content.ReadAs(response);
                        Message(response);

                        ReadFromResponse(response);

                    end;
                end;
            }
        }
    }

    procedure ReadFromResponse(response: Text)
    var
        json_array: JsonArray;
        json_value: JsonValue;
        json_object: JsonObject;
        json_token, ValueJToken : JsonToken;
        RecUsers: Record Users;
        i: Integer;
        userID: Integer;
    begin

        RecUsers.Reset();





        if json_token.ReadFrom(response) then begin
            if json_token.IsArray then begin
                json_array := json_token.AsArray();

                for i := 0 to json_array.Count - 1 do begin



                    json_array.Get(i, json_token);

                    if json_token.IsObject then begin
                        json_object := json_token.AsObject();

                        if RecUsers.FindLast() then
                            userID := RecUsers.ID + 1
                        else
                            userID := 1;

                        RecUsers.ID := userID;

                        if json_object.Get('name', ValueJToken) then begin
                            //Message('%1', ValueJToken.AsValue());
                            RecUsers.Name := ValueJToken.AsValue().AsText();
                        end;

                        if json_object.Get('email', ValueJToken) then begin
                            // Message('%1', ValueJToken.AsValue());
                            RecUsers.Email := ValueJToken.AsValue().AsText();
                        end;

                        if json_object.Get('id', ValueJToken) then begin
                            // Message('%1', ValueJToken.AsValue());
                            RecUsers."Web-ID" := ValueJToken.AsValue().AsInteger();
                        end;

                        RecUsers.Insert();
                        // Commit();
                        userID := userID + 1;
                        RecUsers.Reset();

                    end;



                end;
            end;


        end;
    end;
}