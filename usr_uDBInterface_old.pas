{
  Data access functions

  This unit contains functions for accessing the User Control data. These
  data are stored in a Firebird version 1.5 client/server database.
}
unit usr_uDBInterface_old;

interface

uses
  usrIW_dm,
  Classes;

  // Check user name and password
  function CheckUser(AUserID, APassword : string) : boolean;
  procedure GetUserAccessRights(AUserID, APassword : string);
  function RightsAsStrings(const S: string): TStrings;
  function CheckRights(ARights: string): boolean;
  function AddUser(AUserID, APassword, ARepeatPassword, ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;

implementation

uses
  ServerController,
  SysUtils;

function CheckUser(AUserID, APassword : string) : boolean;
begin
  dmUser.qCheckUser.Close;
  dmUser.qCheckUser.ParamByName('UserNameID').AsString := AUserID;
  dmUser.qCheckUser.ParamByName('UserPassword').AsString := APassword;
  dmUser.cdsUserSpecific.Close;
  dmUser.cdsUserSpecific.Open;
  Result := not (dmUser.cdsUserSpecific.RecordCount=0);
  dmUser.cdsUserSpecific.Close;
end;

procedure GetUserAccessRights(AUserID, APassword : string);
begin
  dmUser.qCheckUser.Close;
  dmUser.qCheckUser.ParamByName('UserNameID').AsString := AUserID;
  dmUser.qCheckUser.ParamByName('UserPassword').AsString := APassword;
  dmUser.cdsUserSpecific.Close;
  dmUser.cdsUserSpecific.Open;
  UserSession.UserDisplayName := dmUser.cdsUserSpecificUSERDISPLAYNAME.AsString;
  UserSession.UserAccessRights.Text := dmUser.cdsUserSpecificUSERACCESSRIGHTS.AsString;
  dmUser.cdsUserSpecific.Close;
end;

function RightsAsStrings(const S: string): TStrings;
begin
  Result := TStringList.Create;
  try
    ExtractStrings([',', ';', ' '], [], PChar(S), Result);
  except
    Result.Free;
    raise;
  end;
end;

function CheckRights(ARights: string): boolean;   // Modified from WebSnap code
var                                               // published by Jimmy Tharpe
  S: TStrings;
begin
  Result := false;
  if Trim(ARights) = '' then Exit;  // Can not look for blank value so set false
  S := TStrings.Create;
  S := RightsAsStrings(UserSession.UserAccessRights.Text); // Break access rights up into a list
  try
    if (S.IndexOf(ARights) >= 0) then Result := true;
  finally
    S.Free;
  end;
end;

function AddUser(AUserID, APassword, ARepeatPassword, ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;
var
  t1 : string;
begin
  Result := FALSE;
  if CheckUser(AUserID, APassword) then
    ErrorMessage := 'This UserID is already registered, please choose a different one.'
  else begin
    t1 := 'CanView; ViewDateView; ';
    try
      try
        dmUser.NewUser.Close;
        dmUser.cdsNewUser.Close;
        dmUser.cdsNewUser.Open;
        dmUser.cdsNewUser.Append;
        dmUser.cdsNewUserUSERNAMEID.AsString :=  AUserID;
        dmUser.cdsNewUserUSERPASSWORD.AsString := APassword;
        dmUser.cdsNewUserUSERDISPLAYNAME.AsString := ADisplayName;
        dmUser.cdsNewUserUSERACCESSRIGHTS.AsString := t1;
        dmUser.cdsNewUser.Post;
      except
        on E: Exception do
        begin
        end;
      end;
      try
        dmUser.qUserContact.Close;
        dmUser.qUserContact.ParamByName('USERNAMEID').Value := AUserID;
        dmUser.cdsUserContact.Close;
        dmUser.cdsUserContact.Open;
        dmUser.cdsUserContact.Append;
        dmUser.cdsUserContactUSERNAMEID.AsString := AUserID;
        dmUser.cdsUserContactLASTNAME.AsString := ALastName;
        dmUser.cdsUserContactFIRSTNAME.AsString := AFirstName;
        dmUser.cdsUserContactREGISTRATIONDATE.AsDateTime := Now;
        dmUser.cdsUserContactEMAILADDRESS.AsString := AEMail;
        dmUser.cdsUserContact.Post;
      except
        on E: Exception do
        begin
        end;
      end;
      try
        dmUser.cdsDVUsers.Close;
        dmUser.cdsDVUsers.Open;
        dmUser.cdsDVUsers.Append;
        dmUser.cdsDVUsersUSERNAMEID.AsString := AUserID;
        dmUser.cdsDVUsers.Post;
      except
        on E: Exception do
        begin
        end;
      end;
      try
        dmUser.cdsDVUsersWhoFor.Close;
        dmUser.cdsDVUsersWhoFor.Open;
        dmUser.cdsDVUsersWhoFor.Append;
        dmUser.cdsDVUsersWhoForUSERNAMEID.AsString := AUserID;
        dmUser.cdsDVUsersWhoForWHOFORID.AsString := 'PUBL';
        dmUser.cdsDVUsersWhoFor.Post;
      except
        on E: Exception do
        begin
        end;
      end;
    finally
    end;
  end;
end;

end.
