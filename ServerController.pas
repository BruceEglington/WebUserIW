unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  usrIW_dm, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
  private
  public
  end;

  // This is a class which you can add variables to that are specific to the user. Add variables
  // to this class instead of creating global variables. This object can references by using:
  //   UserSession
  // So if a variable named UserName of type string is added, it can be referenced by using:
  //   UserSession.UserName
  // Such variables are similar to globals in a normal application, however these variables are
  // specific to each user.
  //
  // See the IntraWeb Manual for more details.
  TUserSession = class(TComponent)
  public
    LoggedIn : boolean; // User logged in or not
    LastVisitedForm : TIWAppFormClass; // This is interesting for the Login form only

    UserID, UserPassword, UserDisplayName,
    UserLastName, UserFirstName, UserEMail : string;
    UserAccessRights : TStringList;
    ThisProgram : string;
    UserSessionID : integer;
    NumUserRightsItems : integer;

    SQLMemoField: TStringList;

    WhereAmI :  string;
    dmUser : TdmUser;
    procedure NeedLogin(AForm : TIWAppFormClass);
    procedure AfterLogin;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

// Procs
  function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWInit, usr_uLogin, usr_uregister, usr_umain;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;

constructor TUserSession.Create(AOwner: TComponent);
var
  f : integer;
  LTime : TDateTime;
begin
  inherited Create(AOwner);
  // This name should be unique per server / session
  // We use the memory address of the UserSession object as a UserSessionID.
  UserSessionID := integer(@Self);
  LTime := Time;
  LoggedIn := FALSE;
  dmUser := TdmUser.Create(Self);
  UserAccessRights := TStringList.Create;
  dmUser.sqlcWebUser.Connected := true;
  SQLMemoField := TStringList.Create;
end;

destructor TUserSession.Destroy;
begin
  FreeAndNil(UserAccessRights);
  FreeAndNil(SQLMemoField);
  inherited Destroy;
end;

procedure TUserSession.AfterLogin;
begin
  LoggedIn := TRUE;
  TIWAppForm(WebApplication.ActiveForm).Release;
  if ( LastVisitedForm.ClassNameIs(TISFLogin.ClassName) or
       LastVisitedForm.ClassNameIs(TISFRegister.ClassName) )  then
    TISFMain.Create(WebApplication).Show
  else
    LastVisitedForm.Create(WebApplication).Show;
end;

procedure TUserSession.NeedLogin(AForm: TIWAppFormClass);
begin
  if LoggedIn then begin
  end;
  LoggedIn := false;
  LastVisitedForm := AForm;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TISFLogin.Create(WebApplication).Show;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

