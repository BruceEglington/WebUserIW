{
  Data access functions

  This unit contains functions for accessing the User Control data. These
  data are stored in a Firebird version 1.5 client/server database.
}
unit usr_uDBInterface;

interface

uses
  usrIW_dm,
  Classes;

  // Check user name and password
  function CheckUser(AUserID, APassword : string) : boolean;
  function CheckUserPayedUp(AUserID, ASoftwareID : string) : boolean;
  function AddUser(AUserID, APassword, ARepeatPassword, ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;
  procedure IncrementNumUses (SoftwareID : string);
  procedure GetUserFromEmail(EMailAddress : string; var UserID : string; var Password : string);
  function ChangeUserDetails(AUserID, AOldPassword, APassword, ARepeatPassword,
    ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;
  procedure GetUserDetails(AUserID : string;
                       var UserLastName : string;
                       var UserFirstName : string;
                       var UserEMail : string);
  function GetURLonTerminate(ASoftwareID : string) : string;
  procedure CheckRights(AProg,AUserID,APassword,ValueForCanView,
     ValueForCanModify,ValueForCanInsert,ValueForCanDelete,
     ValueForCanValidate,ValueForCanExport,
     ValueForCanViewPlus,ValueForCanModifyPlus,
     ValueForIsDeveloper : string);

implementation

uses
  ServerController,
  SysUtils, usr_constants;

function CheckUser(AUserID, APassword : string) : boolean;
begin
  Result := false;
  try
    dmUser.qUserSpecific.Close;
    dmUser.qUserSpecific.ParamByName('USERID').AsString := AUserID;
    dmUser.qUserSpecific.ParamByName('UserPassword').AsString := APassword;
    dmUser.cdsUserSpecific.Close;
    dmUser.cdsUserSpecific.Open;
    Result := not (dmUser.cdsUserSpecific.RecordCount=0);
  except
    Result := false;
  end;
  dmUser.cdsUserSpecific.Close;
end;

function CheckUserPayedUp(AUserID, ASoftwareID : string) : boolean;
var
  tmpStr : string;
begin
  Result := false;
  if TestFeature then
  begin
    Result := true;
    dmUser.qThisProgram.Close;
    dmUser.qThisProgram.ParamByName('SoftwareID').AsString := ASoftwareID;
    dmUser.cdsThisProgram.Close;
    dmUser.cdsThisProgram.Open;
    if (dmUser.cdsThisProgramUseAccounts.AsString = 'Y') then
    begin
      Result := false;
      try
        dmUser.qUserAccount.Close;
        dmUser.qUserAccount.ParamByName('USERID').AsString := AUserID;
        dmUser.qUserAccount.ParamByName('SoftwareID').AsString := ASoftwareID;
        dmUser.cdsUserAccount.Close;
        dmUser.cdsUserAccount.Open;
        tmpStr := Trim(dmUser.cdsUserAccountACCOUNTID.AsString);
        dmUser.qAccounts.Close;
        dmUser.qAccounts.ParamByName('AccountID').AsString := tmpStr;
        dmUser.cdsAccounts.Close;
        dmUser.cdsAccounts.Open;
        //Result := (dmUser.cdsAccountsVALIDUNTIL.AsDateTime > Now);
        Result := (dmUser.cdsAccountsVALIDUNTIL.AsDateTime > dmUser.GetUTCDateTime);
      except
        Result := false;
      end;
      dmUser.cdsUserAccount.Close;
      dmUser.cdsAccounts.Close;
    end;
    dmUser.cdsThisProgram.Close;
  end else
  begin
    Result := true;
  end;
end;

function AddUser(AUserID, APassword, ARepeatPassword,
    ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;
var
  t1 : string;
begin
  ErrorMessage := 'Problem registering new user. Please contact the Developer.';
  Result := FALSE;
  if CheckUser(lowercase(trim(AUserID)), APassword) then
    ErrorMessage := 'This UserID is already registered, please choose a different one.'
  else begin
    t1 := 'CanView; ViewDateView; ';
    Result := true;
    try
      try
        dmUser.NewUser.Close;
        dmUser.cdsNewUser.Close;
        dmUser.cdsNewUser.Open;
        dmUser.cdsNewUser.Append;
        dmUser.cdsNewUserUSERID.AsString :=  trim(AUserID);
        dmUser.cdsNewUserUSERPASSWORD.AsString := APassword;
        dmUser.cdsNewUserUSERDISPLAYNAME.AsString := ADisplayName;
        dmUser.cdsNewUserUSERACCESSRIGHTS.AsString := t1;
        dmUser.cdsNewUser.Post;
        dmUser.cdsNewUser.ApplyUpdates(0);
      except
        on E: Exception do
        begin
          Result := FALSE;
        end;
      end;
      if Result then
      begin
        try
          dmUser.qUserContact.Close;
          dmUser.qUserContact.ParamByName('USERID').Value := trim(AUserID);
          dmUser.cdsUserContact.Close;
          dmUser.cdsUserContact.Open;
          dmUser.cdsUserContact.Append;
          dmUser.cdsUserContactUSERID.AsString := AUserID;
          dmUser.cdsUserContactLASTNAME.AsString := ALastName;
          dmUser.cdsUserContactFIRSTNAME.AsString := AFirstName;
          //dmUser.cdsUserContactREGISTRATIONDATE.AsDateTime := Now;
          dmUser.cdsUserContactREGISTRATIONDATE.AsDateTime := dmUser.GetUTCDateTime;
          dmUser.cdsUserContactEMAILADDRESS.AsString := lowercase(trim(AEMail));
          dmUser.cdsUserContact.Post;
          dmUser.cdsUserContact.ApplyUpdates(0);
        except
          on E: Exception do
          begin
            Result := FALSE;
          end;
        end;
      end;
    finally
    end;
  end;
end;

procedure IncrementNumUses (SoftwareID : string);
var
  tmpi : integer;
begin
  dmUser.qNumTimesUsed.Close;
  dmUser.qNumTimesUsed.ParamByName('SOFTWAREID').AsString := SoftwareID;
  dmUser.cdsNumTimesUsed.Close;
  dmUser.cdsNumTimesUsed.Open;
  try
    dmUser.cdsNumTimesUsed.Edit;
    tmpi := dmUser.cdsNumTimesUsedNUMTIMESUSED.AsInteger;
    dmUser.cdsNumTimesUsedNUMTIMESUSED.AsInteger := tmpi + 1;
    dmUser.cdsNumTimesUsed.Post;
    dmUser.cdsNumTimesUsed.ApplyUpdates(0);
  except
  end;
end;

procedure GetUserFromEmail(EMailAddress : string; var UserID : string; var Password : string);
var
  tmpUserId, tmpPassword : string;
begin
  dmUser.qForgotten.Close;
  dmUser.qForgotten.ParamByName('EMailAddress').AsString := lowercase(trim(EMailAddress));
  dmUser.cdsForgotten.Close;
  dmUser.cdsForgotten.Open;
  dmUser.cdsForgottenDetails.Open;
  if (dmUser.cdsForgottenDetails.RecordCount > 0) then
  begin
    tmpUserID := trim(dmUser.cdsForgottenDetailsUSERID.AsString);
    tmpPassword := dmUser.cdsForgottenDetailsUSERPASSWORD.AsString;
  end else
  begin
    tmpUserID := '';
    tmpPassword := '';
  end;
  //dmUser.SetDeveloperData('in GetUserFromEmail');
  //dmUser.SetDeveloperData(tmpUserID);
  //dmUser.SetDeveloperData(tmpPassword);
  dmUser.cdsForgotten.Close;
  UserID := trim(tmpUserID);
  Password := tmpPassword;
end;

function ChangeUserDetails(AUserID, AOldPassword, APassword, ARepeatPassword,
    ADisplayName, AEmail, ALastName, AFirstName : string; var ErrorMessage : string) : boolean;
begin
  ErrorMessage := 'Passwords do not match';
  Result := FALSE;
  if (APassword <> ARepeatPassword) then
  begin
    ErrorMessage := 'Passwords do not match';
  end else
  begin
    Result := true;
    try
      try
        dmUser.qUserSpecific.Close;
        dmUser.qUserSpecific.ParamByName('USERID').AsString := trim(AUserID);
        dmUser.qUserSpecific.ParamByName('UserPassword').AsString := AOldPassword;
        dmUser.cdsUserSpecific.Close;
        dmUser.cdsUserSpecific.Open;
        dmUser.cdsUserSpecific.Edit;
        dmUser.cdsUserSpecificUSERPASSWORD.AsString := APassword;
        dmUser.cdsUserSpecificUSERDISPLAYNAME.AsString := ADisplayName;
        dmUser.cdsUserSpecific.Post;
        dmUser.cdsUserSpecific.ApplyUpdates(0);
      except
        on E: Exception do
        begin
          Result := FALSE;
        end;
      end;
      if Result then
      begin
        try
          dmUser.qUserContact.Close;
          dmUser.qUserContact.ParamByName('USERID').Value := trim(AUserID);
          dmUser.cdsUserContact.Close;
          dmUser.cdsUserContact.Open;
          dmUser.cdsUserContact.Edit;
          dmUser.cdsUserContactLASTNAME.AsString := ALastName;
          dmUser.cdsUserContactFIRSTNAME.AsString := AFirstName;
          dmUser.cdsUserContactEMAILADDRESS.AsString := lowercase(trim(AEMail));
          dmUser.cdsUserContact.Post;
          dmUser.cdsUserContact.ApplyUpdates(0);
        except
          on E: Exception do
          begin
            Result := FALSE;
          end;
        end;
      end;
    finally
    end;
  end;
end;

procedure GetUserDetails(AUserID : string;
                     var UserLastName : string;
                     var UserFirstName : string;
                     var UserEMail : string);
begin
  dmUser.qUserContact.Close;
  dmUser.qUserContact.ParamByName('USERID').AsString := trim(AUserID);
  dmUser.cdsUserContact.Close;
  dmUser.cdsUserContact.Open;
  UserLastName := dmUser.cdsUserContactLASTNAME.AsString;
  UserFirstName := dmUser.cdsUserContactFIRSTNAME.AsString;
  UserEMail := lowercase(trim(dmUser.cdsUserContactEMAILADDRESS.AsString));
  dmUser.cdsUserContact.Close;
end;

function GetURLonTerminate(ASoftwareID : string) : string;
begin
  Result := 'https://sil.usask.ca';
  dmUser.qThisProgram.Close;
  dmUser.qThisProgram.ParamByName('SoftwareID').AsString := ASoftwareID;
  dmUser.cdsThisProgram.Close;
  dmUser.cdsThisProgram.Open;
  if (Trim(dmUser.cdsThisProgramURLONTERMINATE.AsString) <> '') then
  begin
    Result := Trim(dmUser.cdsThisProgramURLONTERMINATE.AsString);
  end;
  dmUser.cdsThisProgram.Close;
end;

procedure CheckRights(AProg,AUserID,APassword,ValueForCanView,
   ValueForCanModify,ValueForCanInsert,ValueForCanDelete,
   ValueForCanValidate,ValueForCanExport,
   ValueForCanViewPlus,ValueForCanModifyPlus,
   ValueForIsDeveloper : string);
const
   TestAccessRights : boolean = false;    // normally set false
var
  AccessRights : string;
  tmpStrList : TStringList;
  i : integer;
begin
  dmUser.qUserSpecific.Close;
  dmUser.qUserSpecific.ParamByName('USERID').AsString := trim(AUserID);
  dmUser.qUserSpecific.ParamByName('UserPassword').AsString := trim(APassword);
  dmUser.cdsUserSpecific.Close;
  dmUser.cdsUserSpecific.Open;
  UserSession.UserDisplayName := dmUser.cdsUserSpecificUSERDISPLAYNAME.AsString;
  AccessRights := dmUser.cdsUserSpecificUSERACCESSRIGHTS.AsString;
  dmUser.cdsUserSpecific.Close;
  if Trim(AccessRights) = '' then Exit;  // Can not look for blank value so set false
  try
    tmpStrList := TStringList.Create;
    // Break access rights up into a list
    // ExtractStrings([';',','],[],PChar(AccessRights),tmpStrList); //original Delphi 2006 version
    ExtractStrings([';',','],[],PWideChar(AccessRights),tmpStrList); // Delphi 2010 version
    for i := 0 to tmpStrList.Count - 1 do tmpStrList.Strings[i] := Trim(tmpStrList.Strings[i]);
    if UserSession.IsDeveloper and TestAccessRights then
    begin
      dmUser.cdsDevInfo.Open;
      dmUser.cdsDevInfo.Insert;
      //dmUser.cdsDevInfoDATESAVED.AsDateTime := Now;
      dmUser.cdsDevInfoDATESAVED.AsDateTime := dmUser.GetUTCDateTime;
      dmUser.cdsDevInfoQUERYCHECK.AsString := tmpStrList.Text+' tmpStrList CheckRights '+AProg;
      dmUser.cdsDevInfo.ApplyUpdates(0);
      dmUser.cdsDevInfo.Close;
    end;
    if (tmpStrList.IndexOf(ValueForCanView) >= 0) then UserSession.CanView := true;
    if (tmpStrList.IndexOf(ValueForCanViewPlus) >= 0) then UserSession.CanViewPlus := true;
    if (tmpStrList.IndexOf(ValueForCanModifyPlus) >= 0) then UserSession.CanModifyPlus := true;
    if (tmpStrList.IndexOf(ValueForCanModify) >= 0) then UserSession.CanModify := true;
    if (tmpStrList.IndexOf(ValueForCanInsert) >= 0) then UserSession.CanInsert := true;
    if (tmpStrList.IndexOf(ValueForCanDelete) >= 0) then UserSession.CanDelete := true;
    if (tmpStrList.IndexOf(ValueForIsDeveloper) >= 0) then UserSession.IsDeveloper := true;
    if (tmpStrList.IndexOf(ValueForCanValidate) >= 0) then UserSession.CanValidate := true;
    if (tmpStrList.IndexOf(ValueForCanExport) >= 0) then UserSession.CanExport := true;
  finally
    FreeAndNil(tmpStrList);
  end;

end;

end.
