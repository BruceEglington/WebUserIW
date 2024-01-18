unit usrIW_dm_old;

interface

uses
  {$IFDEF Linux}QForms, {$ELSE}Forms, {$ENDIF}
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr,
  dviw_formdatau;

type
  TdmUserTemp = class(TDataModule)
    sqlcWebUser: TSQLConnection;
    WebUser: TSQLQuery;
    WebUserUSERNAMEID: TStringField;
    WebUserUSERPASSWORD: TStringField;
    WebUserUSERACCESSRIGHTS: TMemoField;
    WebUserUSERDISPLAYNAME: TStringField;
    dspWebUser: TDataSetProvider;
    cdsWebUser: TClientDataSet;
    cdsWebUserUSERNAMEID: TStringField;
    cdsWebUserUSERPASSWORD: TStringField;
    cdsWebUserUSERDISPLAYNAME: TStringField;
    cdsWebUserUSERACCESSRIGHTS: TMemoField;
    dsWebUser: TDataSource;
    dspWebUser2: TDataSetProvider;
    cdsUserSpecific: TClientDataSet;
    cdsUserSpecificUSERNAMEID: TStringField;
    cdsUserSpecificUSERPASSWORD: TStringField;
    cdsUserSpecificUSERDISPLAYNAME: TStringField;
    cdsUserSpecificUSERACCESSRIGHTS: TMemoField;
    dsUserSpecific: TDataSource;
    UserInfo: TSQLQuery;
    UserInfoUSERNAMEID: TStringField;
    UserInfoSOFTWAREID: TStringField;
    UserInfoLASTUSED: TSQLTimeStampField;
    UserInfoSESSIONINFO: TBlobField;
    dspUserInfo: TDataSetProvider;
    cdsUserInfo: TClientDataSet;
    cdsUserInfoUSERNAMEID: TStringField;
    cdsUserInfoSOFTWAREID: TStringField;
    cdsUserInfoLASTUSED: TSQLTimeStampField;
    cdsUserInfoSESSIONINFO: TBlobField;
    qUserContact: TSQLQuery;
    qUserContactUSERNAMEID: TStringField;
    qUserContactLASTNAME: TStringField;
    qUserContactFIRSTNAME: TStringField;
    qUserContactREGISTRATIONDATE: TSQLTimeStampField;
    qUserContactEMAILADDRESS: TStringField;
    dspUserContact: TDataSetProvider;
    cdsUserContact: TClientDataSet;
    cdsUserContactUSERNAMEID: TStringField;
    cdsUserContactLASTNAME: TStringField;
    cdsUserContactFIRSTNAME: TStringField;
    cdsUserContactREGISTRATIONDATE: TSQLTimeStampField;
    cdsUserContactEMAILADDRESS: TStringField;
    NewUser: TSQLQuery;
    NewUserUSERNAMEID: TStringField;
    NewUserUSERPASSWORD: TStringField;
    NewUserUSERDISPLAYNAME: TStringField;
    NewUserUSERACCESSRIGHTS: TMemoField;
    dspNewUser: TDataSetProvider;
    cdsNewUser: TClientDataSet;
    cdsNewUserUSERNAMEID: TStringField;
    cdsNewUserUSERPASSWORD: TStringField;
    cdsNewUserUSERDISPLAYNAME: TStringField;
    cdsNewUserUSERACCESSRIGHTS: TMemoField;
    qPrograms: TSQLQuery;
    qProgramsSOFTWAREID: TStringField;
    qProgramsSOFTWARENAME: TStringField;
    dspPrograms: TDataSetProvider;
    cdsPrograms: TClientDataSet;
    cdsProgramsSOFTWAREID: TStringField;
    cdsProgramsSOFTWARENAME: TStringField;
    qDVUsers: TSQLQuery;
    qDVUsersUSERNAMEID: TStringField;
    dspDVUsers: TDataSetProvider;
    cdsDVUsers: TClientDataSet;
    cdsDVUsersUSERNAMEID: TStringField;
    qDVUsersWhoFor: TSQLQuery;
    dspDVUsersWhoFor: TDataSetProvider;
    cdsDVUsersWhoFor: TClientDataSet;
    cdsDVUsersWhoForUSERNAMEID: TStringField;
    cdsDVUsersWhoForWHOFORID: TStringField;
    sqlcDateView: TSQLConnection;
    qCheckUser: TSQLQuery;
    qCheckUserUSERNAMEID: TStringField;
    qCheckUserUSERPASSWORD: TStringField;
    qCheckUserUSERDISPLAYNAME: TStringField;
    qCheckUserUSERACCESSRIGHTS: TMemoField;
  private
    FFormData: TFormData;
    function GetFormData: TFormData;
  public
    property FormData: TFormData read GetFormData;
    procedure SetFormData;
  end;

// Procs
  function dmUserTemp: TdmUserTemp;

implementation
{$R *.dfm}

uses
  IWInit,
  ServerController,
  Variants;
const
  sFormData = 'FormData';

// Since we are threaded we cannot use global variables to store form / datamodule references
// so we store them in WebApplication.Data and we could reference that each time, but by creating
// a function like this our other code looks "normal" almost as if its referencing a global.
// This function is not necessary but it makes the code in the main form which references this
// datamodule a lot neater.
// Without this function every time we would reference this datamodule we would use:
//   TDataModule1(WebApplication.Data).Datamodule.<method / component>
// By creating this procedure it becomes:
//   TDataModule1.<method / component>
// Which is just like normal Delphi code.

function dmUserTemp: TdmUserTemp;
begin
  Result := TUserSession(WebApplication.Data).dmUser;
end;

function TdmUserTemp.GetFormData: TFormData;
var
  V: Variant;
begin
  dmUser.UserInfo.Close;
  dmUser.UserInfo.ParamByName('USERNAMEID').Value := UserSession.UserID;
  dmUser.UserInfo.ParamByName('SOFTWAREID').Value := UserSession.ThisProgram;
  dmUser.cdsUserInfo.Close;
  dmUser.cdsUserInfo.Open;
  if FFormData = nil then
  begin
    FFormData := TFormData.Create;
    V := dmUser.cdsUserInfoSESSIONINFO.AsVariant;
    try
      if not VarIsEmpty(V) then
        // Retrieve data entered by the user, if any
        FFormData.XML := V;
    except
    end;
  end;
  Result := FFormData;
  dmUser.cdsUserInfo.Close;
end;

procedure TdmUserTemp.SetFormData;
begin
  dmUser.UserInfo.Close;
  dmUser.UserInfo.ParamByName('USERNAMEID').Value := UserSession.UserID;
  dmUser.UserInfo.ParamByName('SOFTWAREID').Value := UserSession.ThisProgram;
  dmUser.cdsUserInfo.Close;
  dmUser.cdsUserInfo.Open;
  if (dmUser.cdsUserInfo.RecordCount = 0) then
  begin
    dmUser.cdsUserInfo.Append;
    dmUser.cdsUserInfoUSERNAMEID.AsString := UserSession.UserID;
    dmUser.cdsUserInfoUSERNAMEID.AsString := UserSession.ThisProgram;
    dmUser.cdsUserInfoLASTUSED.AsDateTime := Now;
    dmUser.cdsUserInfoSESSIONINFO.AsVariant := FormData.XML;
    dmUser.cdsUserInfo.Post;
  end else
  begin
    dmUser.cdsUserInfo.Edit;
    dmUser.cdsUserInfoLASTUSED.AsDateTime := Now;
    dmUser.cdsUserInfoSESSIONINFO.AsVariant := FormData.XML;
    dmUser.cdsUserInfo.Post;
  end;
  dmUser.cdsUserInfo.ApplyUpdates(0);
  dmUser.cdsUserInfo.Close;
end;

end.
