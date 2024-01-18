unit usrIW_dm;

interface

uses
  System.SysUtils, Forms,
  Classes, FMTBcd, DB, DBClient, Provider, SqlExpr,
  DBXCommon,  DbxDevartInterbase,  midaslib,
  WideStrings,
  Data.DBXFirebird;

type
  TdmUser = class(TDataModule)
    WebUser: TSQLQuery;
    WebUserUSERID: TStringField;
    WebUserUSERPASSWORD: TStringField;
    WebUserUSERACCESSRIGHTS: TMemoField;
    WebUserUSERDISPLAYNAME: TStringField;
    dspWebUser: TDataSetProvider;
    cdsWebUser: TClientDataSet;
    cdsWebUserUSERID: TStringField;
    cdsWebUserUSERPASSWORD: TStringField;
    cdsWebUserUSERDISPLAYNAME: TStringField;
    cdsWebUserUSERACCESSRIGHTS: TMemoField;
    dsWebUser: TDataSource;
    dspUserSpecific: TDataSetProvider;
    cdsUserSpecific: TClientDataSet;
    cdsUserSpecificUSERID: TStringField;
    cdsUserSpecificUSERPASSWORD: TStringField;
    cdsUserSpecificUSERDISPLAYNAME: TStringField;
    cdsUserSpecificUSERACCESSRIGHTS: TMemoField;
    dsUserSpecific: TDataSource;
    UserInfo: TSQLQuery;
    UserInfoUSERID: TStringField;
    UserInfoSOFTWAREID: TStringField;
    UserInfoLASTUSED: TSQLTimeStampField;
    UserInfoSESSIONINFO: TBlobField;
    dspUserInfo: TDataSetProvider;
    cdsUserInfo: TClientDataSet;
    cdsUserInfoUSERID: TStringField;
    cdsUserInfoSOFTWAREID: TStringField;
    cdsUserInfoLASTUSED: TSQLTimeStampField;
    cdsUserInfoSESSIONINFO: TBlobField;
    qUserContact: TSQLQuery;
    qUserContactUSERID: TStringField;
    qUserContactLASTNAME: TStringField;
    qUserContactFIRSTNAME: TStringField;
    qUserContactREGISTRATIONDATE: TSQLTimeStampField;
    qUserContactEMAILADDRESS: TStringField;
    dspUserContact: TDataSetProvider;
    cdsUserContact: TClientDataSet;
    cdsUserContactUSERID: TStringField;
    cdsUserContactLASTNAME: TStringField;
    cdsUserContactFIRSTNAME: TStringField;
    cdsUserContactREGISTRATIONDATE: TSQLTimeStampField;
    cdsUserContactEMAILADDRESS: TStringField;
    NewUser: TSQLQuery;
    NewUserUSERID: TStringField;
    NewUserUSERPASSWORD: TStringField;
    NewUserUSERDISPLAYNAME: TStringField;
    NewUserUSERACCESSRIGHTS: TMemoField;
    dspNewUser: TDataSetProvider;
    cdsNewUser: TClientDataSet;
    cdsNewUserUSERID: TStringField;
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
    qUserSpecific: TSQLQuery;
    qUserSpecificUSERID: TStringField;
    qUserSpecificUSERPASSWORD: TStringField;
    qUserSpecificUSERDISPLAYNAME: TStringField;
    qUserSpecificUSERACCESSRIGHTS: TMemoField;
    qProgress: TSQLQuery;
    dspProgress: TDataSetProvider;
    cdsProgress: TClientDataSet;
    dsProgress: TDataSource;
    qNumTimesUsed: TSQLQuery;
    dspNumTimesUsed: TDataSetProvider;
    cdsNumTimesUsed: TClientDataSet;
    dsNumTimesUsed: TDataSource;
    qForgotten: TSQLQuery;
    dspForgotten: TDataSetProvider;
    cdsForgotten: TClientDataSet;
    dsForgotten: TDataSource;
    cdsForgottenUSERID: TStringField;
    dsqForgotten: TDataSource;
    qForgottenDetails: TSQLQuery;
    cdsForgottenDetails: TClientDataSet;
    dsForgottenDetails: TDataSource;
    cdsForgottenqForgottenDetails: TDataSetField;
    cdsForgottenDetailsUSERID: TStringField;
    cdsForgottenDetailsUSERPASSWORD: TStringField;
    qCookieInfo: TSQLQuery;
    dspCookieInfo: TDataSetProvider;
    cdsCookieInfo: TClientDataSet;
    dsCookieInfo: TDataSource;
    qUserAccount: TSQLQuery;
    qAccounts: TSQLQuery;
    qMemberType: TSQLQuery;
    dspUserAccount: TDataSetProvider;
    dspAccounts: TDataSetProvider;
    dspMemberType: TDataSetProvider;
    cdsUserAccount: TClientDataSet;
    cdsAccounts: TClientDataSet;
    cdsMemberType: TClientDataSet;
    dsMemberType: TDataSource;
    dsAccounts: TDataSource;
    dsUserAccount: TDataSource;
    cdsUserAccountUSERID: TStringField;
    cdsUserAccountSOFTWAREID: TStringField;
    cdsUserAccountACCOUNTID: TStringField;
    cdsAccountsACCOUNTID: TStringField;
    cdsAccountsACCOUNTNAME: TStringField;
    cdsAccountsDATESTARTED: TSQLTimeStampField;
    cdsAccountsMEMTYPEID: TStringField;
    cdsAccountsVALIDUNTIL: TSQLTimeStampField;
    cdsMemberTypeMEMTYPEID: TStringField;
    cdsMemberTypeMEMBERTYPE: TStringField;
    cdsMemberTypeSUBSCRIPTION: TFloatField;
    cdsUserAccountSOFTWARENAME: TStringField;
    cdsUserAccountUSEACCOUNTS: TStringField;
    qMemberTypes: TSQLQuery;
    dspMemberTypes: TDataSetProvider;
    cdsMemberTypes: TClientDataSet;
    dsMemberTypes: TDataSource;
    qThisProgram: TSQLQuery;
    dspThisProgram: TDataSetProvider;
    cdsThisProgram: TClientDataSet;
    dsThisProgram: TDataSource;
    cdsMemberTypesMEMTYPEID: TStringField;
    cdsMemberTypesMEMBERTYPE: TStringField;
    cdsMemberTypesSUBSCRIPTION: TFloatField;
    qYears: TSQLQuery;
    qMonths: TSQLQuery;
    cdsMonths: TClientDataSet;
    dspMonths: TDataSetProvider;
    dsMonths: TDataSource;
    dspYears: TDataSetProvider;
    cdsYears: TClientDataSet;
    dsYears: TDataSource;
    cdsYearsYEARNO: TSmallintField;
    cdsMonthsMONTHNO: TSmallintField;
    cdsMonthsMONTHID: TStringField;
    cdsMonthsMONTHNAME: TStringField;
    UserInfoBROWSERUSED: TStringField;
    cdsUserInfoBROWSERUSED: TStringField;
    sqlcWebUser: TSQLConnection;
    qInsertDevInfo: TSQLQuery;
    qUserMaxOutputRecords: TSQLQuery;
    dspUserMaxOutputRecords: TDataSetProvider;
    cdsUserMaxOutputRecords: TClientDataSet;
    dsUserMaxOutputRecords: TDataSource;
    qUserMaximumOutputLimits: TSQLQuery;
    dspUserMaximumOutputLimits: TDataSetProvider;
    cdsUserMaximumOutputLimits: TClientDataSet;
    dsUserMaximumOutputLimits: TDataSource;
    cdsUserMaxOutputRecordsUSERID: TStringField;
    cdsUserMaxOutputRecordsDOWNLOADTYPEID: TIntegerField;
    cdsUserMaxOutputRecordsMAXALLOWED: TFMTBCDField;
    cdsUserMaxOutputRecordsDOWNLOADTYPE: TStringField;
    qUserMaxOutputRecordsUSERID: TStringField;
    qUserMaxOutputRecordsDOWNLOADTYPEID: TIntegerField;
    qUserMaxOutputRecordsDOWNLOADTYPE: TStringField;
    qUserMaxOutputRecordsMAXALLOWED: TFMTBCDField;
    qInsertUserMaxOutputRecord: TSQLQuery;
    cdsUserMaximumOutputLimitsUSERID: TStringField;
    cdsUserMaximumOutputLimitsDOWNLOADTYPEID: TIntegerField;
    cdsUserMaximumOutputLimitsDOWNLOADTYPE: TStringField;
    cdsUserMaximumOutputLimitsMAXALLOWED: TFMTBCDField;
    qUserMaximumOutputLimitsUSERID: TStringField;
    qUserMaximumOutputLimitsDOWNLOADTYPEID: TIntegerField;
    qUserMaximumOutputLimitsDOWNLOADTYPE: TStringField;
    qUserMaximumOutputLimitsMAXALLOWED: TFMTBCDField;
    cdsUserAccountMEMTYPEID: TStringField;
    qDevInfo: TSQLQuery;
    dspDevInfo: TDataSetProvider;
    cdsDevInfo: TClientDataSet;
    dsDevInfo: TDataSource;
    qMaxDevInfo: TSQLQuery;
    dspMaxDevInfo: TDataSetProvider;
    cdsMaxDevInfo: TClientDataSet;
    dsMaxDevInfo: TDataSource;
    SQLMonitor1: TSQLMonitor;
    cdsDevInfoDATESAVED: TSQLTimeStampField;
    cdsDevInfoQUERYCHECK: TStringField;
    cdsDevInfoDEVINFOORDER: TIntegerField;
    qTest: TSQLQuery;
    qProgressSOFTWAREID: TStringField;
    qProgressPROGRESSID: TIntegerField;
    qProgressPROGRESSDATE: TSQLTimeStampField;
    qProgressPROGRESSDETAILS: TMemoField;
    cdsProgressSOFTWAREID: TStringField;
    cdsProgressPROGRESSID: TIntegerField;
    cdsProgressPROGRESSDATE: TSQLTimeStampField;
    cdsProgressPROGRESSDETAILS: TMemoField;
    qNumTimesUsedSOFTWAREID: TStringField;
    qNumTimesUsedNUMTIMESUSED: TIntegerField;
    cdsNumTimesUsedSOFTWAREID: TStringField;
    cdsNumTimesUsedNUMTIMESUSED: TIntegerField;
    cdsCookieInfoUSERID: TStringField;
    cdsCookieInfoSOFTWAREID: TStringField;
    cdsCookieInfoLASTUSED: TSQLTimeStampField;
    cdsCookieInfoCOOKIEINFO: TMemoField;
    cdsThisProgramSOFTWAREID: TStringField;
    cdsThisProgramSOFTWARENAME: TStringField;
    cdsThisProgramUSEACCOUNTS: TStringField;
    cdsThisProgramDEFAULTACCOUNTID: TStringField;
    cdsThisProgramEMAILDEVELOPER: TStringField;
    cdsThisProgramEMAILADMINISTRATOR: TStringField;
    cdsThisProgramURLONTERMINATE: TStringField;
    cdsMaxDevInfoMAXIMUM: TIntegerField;
    procedure cdsAnyReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
  public
    procedure GetFormData2(var SQLMemoField : String);
    procedure SetFormData2(SQLMemoField : String);
    function GetUTCDateTime: TDateTime;
    procedure SetDeveloperData(tmpStrList : String);
    procedure InsertDeveloperData(tmpStrList : String);
    function GetUserRowLimit(USERID : string; DataTypeID : integer) : integer;
    procedure SetUserDownloadLimits(USERID : string; DataTypeID : integer);
  end;

// Procs
  function dmUser: TdmUser;

implementation
{$R *.dfm}

uses
  IWInit,
  ServerController,
  Variants;

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

function dmUser: TdmUser;
begin
  Result := TUserSession(WebApplication.Data).dmUser;
end;

procedure TdmUser.cdsAnyReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  WebApplication.ShowMessage('Reconcile error - '+E.Message);
end;

procedure TdmUser.GetFormData2(var SQLMemoField : String);
begin
  dmUser.UserInfo.Close;
  dmUser.UserInfo.ParamByName('USERID').AsString := UserSession.USERID;
  dmUser.UserInfo.ParamByName('SOFTWAREID').AsString := UserSession.ThisProgram;
  dmUser.cdsUserInfo.Close;
  dmUser.cdsUserInfo.Open;
  //V := dmUser.cdsUserInfoSESSIONINFO.AsVariant;
  SQLMemoField := dmUser.cdsUserInfoSESSIONINFO.AsString;
  dmUser.cdsUserInfo.Close;
  //SQLMemoField := V;
end;

function TdmUser.GetUTCDateTime: TDateTime;
var
  //UTC: TSystemTime;
  UTC: TDateTime;
begin
  UTC := Now;
  //result := SystemTimeToDateTime(Now);
  result := UTC;
end;

procedure TdmUser.SetFormData2(SQLMemoField : String);
begin
  dmUser.UserInfo.Close;
  dmUser.UserInfo.ParamByName('USERID').AsString := UserSession.USERID;
  dmUser.UserInfo.ParamByName('SOFTWAREID').AsString := UserSession.ThisProgram;
  dmUser.cdsUserInfo.Close;
  dmUser.cdsUserInfo.Open;
  if (dmUser.cdsUserInfo.RecordCount = 0) then
  begin
    dmUser.cdsUserInfo.Append;
    dmUser.cdsUserInfoUSERID.AsString := UserSession.USERID;
    dmUser.cdsUserInfoSOFTWAREID.AsString := UserSession.ThisProgram;
    //dmUser.cdsUserInfoLASTUSED.AsDateTime := Now;
    dmUser.cdsUserInfoLASTUSED.AsDateTime := dmUser.GetUTCDateTime;
    dmUser.cdsUserInfoSESSIONINFO.AsVariant := SQLMemoField;
    dmUser.cdsUserInfoBROWSERUSED.AsString := WebApplication.Request.UserAgent;
    dmUser.cdsUserInfo.Post;
  end else
  begin
    dmUser.cdsUserInfo.Edit;
    //dmUser.cdsUserInfoLASTUSED.AsDateTime := Now;
    dmUser.cdsUserInfoLASTUSED.AsDateTime := dmUser.GetUTCDateTime;
    dmUser.cdsUserInfoSESSIONINFO.AsVariant := SQLMemoField;
    dmUser.cdsUserInfoBROWSERUSED.AsString := WebApplication.Request.UserAgent;
    dmUser.cdsUserInfo.Post;
  end;
  dmUser.cdsUserInfo.ApplyUpdates(0);
  dmUser.cdsUserInfo.Close;
end;

{
procedure TdmUser.SetDeveloperDataOld(tmpStrList : String);
var
  tNow : TDateTime;
  tDateSavedStr : string;
  tMax : longint;
begin
  try
    if ((UserSession.IsDeveloper) and (UserSession.LoggedIn)) then
    begin
      dmUser.cdsMaxDevInfo.Open;
      tMax := dmUser.cdsMaxDevInfoMAXIMUM.AsInteger+1;
      dmUser.cdsMaxDevInfo.Close;
      //tNow := Now;
      //tNow := dmUser.GetUTCDateTime;
      //DateTimeToString(tDateSavedStr,'YYYY-MM-DD HH:NN:SS.nnnn',tNow);
      dmUser.cdsDevInfo.Close;
      dmUser.qDevInfo.Close;
      dmUser.cdsDevInfo.Open;
      dmUser.cdsDevInfo.Append;
      dmUser.cdsDevInfoDevInfoOrder.AsInteger := tMax;
      dmUser.cdsDevInfoDATESAVED.AsDateTime := Now;
      //dmUser.cdsDevInfoDATESAVED.AsDateTime := dmUser.GetUTCDateTime;
      dmUser.cdsDevInfoQUERYCHECK.AsString := tmpStrList;
      dmUser.cdsDevInfo.Post;
      try
        dmUser.cdsDevInfo.ApplyUpdates(-1);
      except
      end;
    end;
  except
    WebApplication.ShowMessage('Not able to insert '+tmpStrList);
  end;
end;
}

procedure TdmUser.SetDeveloperData(tmpStrList : String);
var
  tMax : longint;
  tNow : TDateTime;
  TD: TDBXTransaction;
  //tDateSavedStr : string;
  //tDateSaved : TDateTime;
begin
    if ((UserSession.IsDeveloper) and (UserSession.LoggedIn)) then
    begin
      dmUser.cdsMaxDevInfo.Open;
      tMax := dmUser.cdsMaxDevInfoMAXIMUM.AsInteger+1;
      dmUser.cdsMaxDevInfo.Close;
      //WebApplication.ShowMessage('tMax = '+intToStr(tMax));
      tNow := dmUser.GetUTCDateTime;
      dmUser.qInsertDevInfo.Close;
      dmUser.qInsertDevInfo.SQL.Clear;
      dmUser.qInsertDevInfo.SQL.Add('INSERT INTO DEVINFO');
      dmUser.qInsertDevInfo.SQL.Add('(DevInfoOrder,DateSaved,QueryCheck)');
      dmUser.qInsertDevInfo.SQL.Add('Values (:tDevInfoOrder,:tDateSaved,:tmpStr)');
      dmUser.qInsertDevInfo.ParamByName('tmpStr').AsString := tmpStrList;
      dmUser.qInsertDevInfo.ParamByName('tDevInfoOrder').AsInteger := tMax;
      dmUser.qInsertDevInfo.ParamByName('tDateSaved').AsDateTime := tNow;
         TD := dmUser.sqlcWebUser.BeginTransaction(TDBXIsolations.ReadCommitted);
        try
          dmUser.qInsertDevInfo.ExecSQL(false);
          dmUser.sqlcWebUser.CommitFreeAndNil(TD); //on success, commit the changes;
        except
          WebApplication.ShowMessage('Not able to insert '+tmpStrList);
          dmUser.sqlcWebUser.RollbackFreeAndNil(TD); //on failure, undo the changes;
        end;
    end;
end;

procedure TdmUser.InsertDeveloperData(tmpStrList : String);
var
  tNow : TDateTime;
  TD: TDBXTransaction;
  tDateSavedStr : string;
  //tDateSaved : TDateTime;
begin
  //UserSession.IsDeveloper := true;
  //UserSession.LoggedIn := true;
  //try
    if ((UserSession.IsDeveloper) and (UserSession.LoggedIn)) then
    begin
      //tNow := Now;
      tNow := dmUser.GetUTCDateTime;
      tDateSavedStr := 'yyyy-mm-dd';
      DateTimeToString(tDateSavedStr,'yyyy-mm-dd',tNow);
      dmUser.qInsertDevInfo.Close;
      dmUser.qInsertDevInfo.SQL.Clear;
      dmUser.qInsertDevInfo.SQL.Add('INSERT INTO DEVTEST');
      dmUser.qInsertDevInfo.SQL.Add('(DateSaved,DateSavedStr,QueryCheckStr)');
      dmUser.qInsertDevInfo.SQL.Add('Values (:tDateSaved,:tDateSavedStr,:tmpStr)');
      dmUser.qInsertDevInfo.ParamByName('tmpStr').AsString := tmpStrList;
      dmUser.qInsertDevInfo.ParamByName('tDateSavedStr').AsString := tDateSavedStr;
      dmUser.qInsertDevInfo.ParamByName('tDateSaved').AsDateTime := tNow;
     //dmUser.qInsertDevInfo.ParamByName('tDateSaved').AsDate := Now;
         TD := dmUser.sqlcWebUser.BeginTransaction(TDBXIsolations.ReadCommitted);
        try
          dmUser.qInsertDevInfo.ExecSQL(false);
          dmUser.sqlcWebUser.CommitFreeAndNil(TD); //on success, commit the changes;
        except
          WebApplication.ShowMessage('Not able to insert '+tmpStrList);
          dmUser.sqlcWebUser.RollbackFreeAndNil(TD); //on failure, undo the changes;
        end;
    end;
  //except
  //end;
end;

function TdmUser.GetUserRowLimit(USERID : string; DataTypeID : integer) : integer;
const
  DefaultMaxAllowed = 100;
//var
  //TD: TDBXTransaction;
begin
  dmUser.qUserMaxOutputRecords.Close;
  dmUser.qUserMaxOutputRecords.ParamByName('USERID').AsString := USERID;
  dmUser.qUserMaxOutputRecords.ParamByName('DownloadTypeID').AsInteger := DataTypeID;
  dmUser.cdsUserMaxOutputRecords.Close;
  dmUser.cdsUserMaxOutputRecords.Open;
  if (dmUser.cdsUserMaxOutputRecords.RecordCount > 0) then
  begin
    Result := dmUser.cdsUserMaxOutputRecordsMAXALLOWED.AsInteger;
    dmUser.cdsUserMaxOutputRecords.Close;
  end else
  begin
    SetUserDownloadLimits(USERID,DataTypeID);
    dmUser.qUserMaxOutputRecords.Close;
    dmUser.qUserMaxOutputRecords.ParamByName('USERID').AsString := USERID;
    dmUser.qUserMaxOutputRecords.ParamByName('DownloadTypeID').AsInteger := DataTypeID;
    dmUser.cdsUserMaxOutputRecords.Close;
    dmUser.cdsUserMaxOutputRecords.Open;
    if (dmUser.cdsUserMaxOutputRecords.RecordCount > 0) then
    begin
      Result := dmUser.cdsUserMaxOutputRecordsMAXALLOWED.AsInteger;
    end else
    begin
      Result := DefaultMaxAllowed;
    end;
  end;
  dmUser.cdsUserMaxOutputRecords.Close;
end;

procedure TdmUser.SetUserDownloadLimits(USERID : string; DataTypeID : integer);
const
  MaxDownloadTypes = 4;
  //DefaultMaxAllowed = 500;
var
  //i : integer;
  TD: TDBXTransaction;
begin
    //no record exists for this user. Create records in USERMAXOUTPUTRECORDS table
    {
    dmUser.qUserMaximumOutputLimits.Close;
    dmUser.qUserMaximumOutputLimits.ParamByName('USERID').AsString := UserSession.USERID;
    dmUser.cdsUserMaximumOutputLimits.Close;
    dmUser.cdsUserMaximumOutputLimits.Open;
    try
      for i := 0 to MaxDownloadTypes do
      begin
        try
        dmUser.cdsUserMaximumOutputLimits.Append;
        dmUser.cdsUserMaximumOutputLimitsUSERID.AsString := UserSession.USERID;
        dmUser.cdsUserMaximumOutputLimitsDOWNLOADTYPEID.AsInteger := i;
        dmUser.cdsUserMaximumOutputLimitsMAXALLOWED.AsInteger := DefaultMaxAllowed;
        dmUser.cdsUserMaximumOutputLimits.Post;
        except
        end;
      end;
      dmUser.cdsUserMaximumOutputLimits.ApplyUpdates(-1);
    except
      WebApplication.ShowMessage('Not able to create new records for UserMaximumOutputLimits');
    end;
    dmUser.cdsUserMaximumOutputLimits.Close;
    }
    dmUser.qInsertUserMaxOutputRecord.Close;
    dmUser.qInsertUserMaxOutputRecord.ParamByName('USERID').AsString := USERID;
    dmUser.qInsertUserMaxOutputRecord.ParamByName('DownloadTypeID').AsInteger := DataTypeID;
    //MaxAllowed is defined in the database itself, so can be changed by Database Administrator
    TD := dmUser.sqlcWebUser.BeginTransaction(TDBXIsolations.ReadCommitted);
    try
      dmUser.qInsertUserMaxOutputRecord.ExecSQL(false);
      dmUser.sqlcWebUser.CommitFreeAndNil(TD); //on success, commit the changes
    except
      dmUser.sqlcWebUser.RollbackFreeAndNil(TD); //on failure, undo the changes
    end;
end;

end.
